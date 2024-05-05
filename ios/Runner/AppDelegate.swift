import UIKit
import Flutter
import YandexMapsMobile


@UIApplicationMain
@objc class AppDelegate: FlutterAppDelegate {
  var methodChannel: FlutterMethodChannel? = nil
  var tokenChannel: FlutterMethodChannel? = nil

  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {
    UIApplication.shared.registerForRemoteNotifications()
    YMKMapKit.setApiKey("6c8801e7-18fc-4835-b7bd-f60e7b42ce84") // Your generated API key

    let controller : FlutterViewController = window?.rootViewController as! FlutterViewController
    methodChannel = FlutterMethodChannel(name: "blind_chicken/getMessages", binaryMessenger: controller.binaryMessenger)
    let tokenController : FlutterViewController = window?.rootViewController as! FlutterViewController
    tokenChannel = FlutterMethodChannel(name: "blind_chicken/getToken", binaryMessenger: tokenController.binaryMessenger)
    
    methodChannel?.setMethodCallHandler({
    (call: FlutterMethodCall, result: @escaping FlutterResult) -> Void in
    if (call.method == "section") {
      result("")
      return
      }
      return
    })

    tokenChannel?.setMethodCallHandler({
    (call: FlutterMethodCall, result: @escaping FlutterResult) -> Void in
    if (call.method == "getDeviceToken") {
      result("")
      return
      }
      return
    })
    if #available(iOS 10.0, *) {
              // For iOS 10 display notification (sent via APNS)
        UNUserNotificationCenter.current().delegate = self
        let authOptions: UNAuthorizationOptions = [.alert, .badge, .sound]
        UNUserNotificationCenter.current().requestAuthorization(
                options: authOptions,
                completionHandler: {_, _ in })
    } else {
        let settings: UIUserNotificationSettings =
        UIUserNotificationSettings(types: [.alert, .badge, .sound], categories: nil)
        application.registerUserNotificationSettings(settings)
    }
    GeneratedPluginRegistrant.register(with: self)
    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }

  override func application(_ application: UIApplication,
                didRegisterForRemoteNotificationsWithDeviceToken 
                deviceToken: Data) {
      let token = deviceToken.map {String(format: "%02.2hhx", $0) }.joined()
       
      tokenChannel?.setMethodCallHandler({
        (call: FlutterMethodCall, result: @escaping FlutterResult) -> Void in
        if (call.method == "getDeviceToken") {
          result(token)
          return
        }
        return
      })
  }

  override func application(_ application: UIApplication, didReceiveRemoteNotification userInfo: [AnyHashable : Any], fetchCompletionHandler completionHandler: @escaping (UIBackgroundFetchResult) -> Void) {
      print("Received remote notification: \(userInfo)")
  }


  override func application(_ application: UIApplication,
                 didFailToRegisterForRemoteNotificationsWithError
                 error: Error) {
    // Try again later.
  } 

  override func userNotificationCenter(_ center: UNUserNotificationCenter, didReceive response: UNNotificationResponse, withCompletionHandler completionHandler: @escaping () -> Void) {

    let userInfo = response.notification.request.content.userInfo


    // guard let apsDict = ((userInfo["aps"] as? NSDictionary)?.value(forKey: "alert")) as? NSDictionary,
    //     let title = apsDict["title"] as? String,
    //     let body = apsDict["body"] as? String
    //     else { return }


    // guard let title = apsDict["title"] as? String
    //     else { return }
    // guard let body = apsDict["body"] as? String
    //     else { return }
    guard let section = userInfo["section"] as? String
        else { return }
    guard let idMessage = userInfo["id_message"] as? String
        else { return }
    guard let type = userInfo["type"] as? String
        else { return }
    guard let sort = userInfo["sort"] as? String
        else { return }
    guard let filter = userInfo["filter"] as? String
        else { return }
    guard let uid = userInfo["uid"] as? String
        else { return }

      methodChannel?.setMethodCallHandler({
        (call: FlutterMethodCall, result: @escaping FlutterResult) -> Void in  
        if (call.method == "section") {
          result("\("\(section)")")
          return
        }   
        if (call.method == "idMessage") {
          result("\("\(idMessage)")")
          return
        }  
        if (call.method == "type") {
          result("\("\(type)")")
          return
        }  
        if (call.method == "sort") {
          result("\("\(sort)")")
          return
        }  
        if (call.method == "uid") {
          result("\("\(uid)")")
          return
        }
        // if (call.method == "title") {
        //   result("\("\(title)")")
        //   return
        // }
        // if (call.method == "body") {
        //   result("\("\(body)")")
        //   return
        // }
        if (call.method == "filter") {
          result("\("\(filter)")")
          return
        }
        return
      })
  }
}