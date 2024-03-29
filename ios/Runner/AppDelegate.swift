import UIKit
import Flutter
import YandexMapsMobile


  var tokenId: String = ""

  var tokenIdinfo: String {
      set {
        tokenId = newValue 
      }
      get {
          return tokenId
      }
  }



@UIApplicationMain
@objc class AppDelegate: FlutterAppDelegate {
  var methodChannel: FlutterMethodChannel? = nil

  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {
    UIApplication.shared.registerForRemoteNotifications()
    YMKMapKit.setApiKey("6c8801e7-18fc-4835-b7bd-f60e7b42ce84") // Your generated API key

    let controller : FlutterViewController = window?.rootViewController as! FlutterViewController
    methodChannel = FlutterMethodChannel(name: "blind_chicken/getMessages", binaryMessenger: controller.binaryMessenger)
    
    methodChannel?.setMethodCallHandler({
    (call: FlutterMethodCall, result: @escaping FlutterResult) -> Void in
    if (call.method == "getMessage") {
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
      let controller : FlutterViewController = window?.rootViewController as! FlutterViewController
      let dtChannel = FlutterMethodChannel(name: "blind_chicken/getToken", binaryMessenger: controller.binaryMessenger)
       
      dtChannel.setMethodCallHandler({
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


    guard let apsDict = ((userInfo["aps"] as? NSDictionary)?.value(forKey: "alert")) as? NSDictionary,
        let title = apsDict["title"] as? String,
        let body = apsDict["body"] as? String
        else { return }


    guard let title = apsDict["title"] as? String
        else { return }
    guard let body = apsDict["body"] as? String
        else { return }
    guard let section = userInfo["section"] as? String
        else { return }
    guard let idMessage = userInfo["id_message"] as? String
        else { return }
    guard let type = userInfo["type"] as? String
        else { return }
    guard let sort = userInfo["sort"] as? String
        else { return }

      methodChannel?.setMethodCallHandler({
        (call: FlutterMethodCall, result: @escaping FlutterResult) -> Void in
        if (call.method == "getMessage") {
          result("\("\(title)"),\(body),\(section),\(idMessage),\(type),\(sort)")
          return
        }
        return
      })
  }
}