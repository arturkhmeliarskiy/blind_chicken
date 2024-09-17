import UIKit
import Flutter
import YandexMapsMobile
import AppMetricaPush

@main
@objc class AppDelegate: FlutterAppDelegate {
  var methodChannel: FlutterMethodChannel? = nil
  var methodChannelAppMetrica: FlutterMethodChannel? = nil

  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {
    UIApplication.shared.registerForRemoteNotifications()
    YMKMapKit.setApiKey("6c8801e7-18fc-4835-b7bd-f60e7b42ce84") // Your generated API key
    AppMetricaPush.setExtensionAppGroup("group.push.slepayakurica")

    let controller : FlutterViewController = window?.rootViewController as! FlutterViewController
    methodChannel = FlutterMethodChannel(name: "blind_chicken/getMessages", binaryMessenger: controller.binaryMessenger)
    let controllerAppMetrica : FlutterViewController = window?.rootViewController as! FlutterViewController
    methodChannelAppMetrica = FlutterMethodChannel(name: "blind_chicken/getMessagesAppMetrica", binaryMessenger: controllerAppMetrica.binaryMessenger)
    
    methodChannelAppMetrica?.setMethodCallHandler({
    (call: FlutterMethodCall, result: @escaping FlutterResult) -> Void in
    if (call.method == "appMetrica") {
      result("")
      return
      }
      return
    })

    methodChannel?.setMethodCallHandler({
    (call: FlutterMethodCall, result: @escaping FlutterResult) -> Void in
    if (call.method == "type") {
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
    
    
    AppMetricaPush.handleApplicationDidFinishLaunching(options: launchOptions)

    self.registerForPushNotificationsWithApplication(application)
    GeneratedPluginRegistrant.register(with: self)
    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }

  func registerForPushNotificationsWithApplication(_ application: UIApplication)
  {
      // Register for push notifications
      if #available(iOS 8.0, *) {
          if #available(iOS 10.0, *) {
              // iOS 10.0 and above
              let center = UNUserNotificationCenter.current()
              let category = UNNotificationCategory(identifier: "Custom category",
                                                    actions: [],
                                                    intentIdentifiers: [],
                                                    options:UNNotificationCategoryOptions.customDismissAction)
              // Only for push notifications of this category dismiss action will be tracked.
              center.setNotificationCategories(Set([category]))
              center.requestAuthorization(options:[.badge, .alert, .sound]) { (granted, error) in
                  // Enable or disable features based on authorization.
              }
          } else {
              // iOS 8 and iOS 9
              let settings = UIUserNotificationSettings(types: [.badge, .alert, .sound], categories: nil)
              application.registerUserNotificationSettings(settings)
          }
          application.registerForRemoteNotifications()
      } else {
          // iOS 7
          application.registerForRemoteNotifications(matching: [.badge, .alert, .sound])
      }
  }

  override func application(_ application: UIApplication,
                 didFailToRegisterForRemoteNotificationsWithError
                 error: Error) {
    // Try again later.
  } 

  override func userNotificationCenter(_ center: UNUserNotificationCenter, didReceive response: UNNotificationResponse, withCompletionHandler completionHandler: @escaping () -> Void) {

    let userInfo = response.notification.request.content.userInfo

            // Track received remote notification.
        // Method AppMetrica.activate should be called before using this method.
        AppMetricaPush.handleRemoteNotification(userInfo)

        // Check if notification is related to AppMetrica (optionally)
        if AppMetricaPush.isNotificationRelated(toSDK: userInfo) {
            // Get user data from remote notification.
            let userData = AppMetricaPush.userData(forNotification: userInfo)
            methodChannelAppMetrica?.setMethodCallHandler({
            (call: FlutterMethodCall, result: @escaping FlutterResult) -> Void in
            if (call.method == "appMetrica") {
              result(userData)
              return
              }
              return
            })
            print("User Data: %@", userData?.description ?? "[no data]")
        } else { 
             // guard let apsDict = ((userInfo["aps"] as? NSDictionary)?.value(forKey: "alert")) as? NSDictionary,
        //     let title = apsDict["title"] as? String,
        //     let body = apsDict["body"] as? String
        //     else { return }


        // guard let title = apsDict["title"] as? String
        //     else { return }
        // guard let body = apsDict["body"] as? String
        //     else { return }
        guard let type = userInfo["type"] as? String
            else { return }
        guard let section = userInfo["section"] as? String
            else { return }
        guard let idMessage = userInfo["id_message"] as? String
            else { return }
        guard let codeProduct = userInfo["code_product"] as? String
            else { return }
        guard let sort = userInfo["sort"] as? String
            else { return }
        // guard let filter = userInfo["filter"] as? String
        //     else { return }
        guard let uid = userInfo["uid"] as? String
            else { return }
        guard let idNews = userInfo["id_news"] as? String
            else { return }

          methodChannel?.setMethodCallHandler({
            (call: FlutterMethodCall, result: @escaping FlutterResult) -> Void in  
            if (call.method == "type") {
              result("\("\(type)")")
              return
            }  
            if (call.method == "section") {
              result("\("\(section)")")
              return
            }   
            if (call.method == "idMessage") {
              result("\("\(idMessage)")")
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
            if (call.method == "codeProduct") {
              result("\("\(codeProduct)")")
              return
            }
            if (call.method == "idNews") {
              result("\("\(idNews)")")
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
            // if (call.method == "filter") {
            //   result("\("\(filter)")")
            //   return
            // }
            return
          })
        }
  }

  override func application(_ application: UIApplication, didReceiveRemoteNotification userInfo: [AnyHashable : Any])
    {
        print("Received remote notification: \(userInfo)")
        self.handlePushNotification(userInfo)
    }

  override func application(_ application: UIApplication, didReceiveRemoteNotification userInfo: [AnyHashable : Any], fetchCompletionHandler completionHandler: @escaping (UIBackgroundFetchResult) -> Void) {
      self.handlePushNotification(userInfo)
      print("Received remote notification: \(userInfo)")
      completionHandler(.newData)
  }

  func handlePushNotification(_ userInfo: [AnyHashable : Any])
    {
        // // Track received remote notification.
        // // Method AppMetrica.activate should be called before using this method.
        // AppMetricaPush.handleRemoteNotification(userInfo)

        // // Check if notification is related to AppMetrica (optionally)
        // if AppMetricaPush.isNotificationRelated(toSDK: userInfo) {
        //     // Get user data from remote notification.
        //     let userData = AppMetricaPush.userData(forNotification: userInfo)
           
        //     print("User Data: %@", userData?.description ?? "[no data]")
        // } else { 
        //     print("Push is not related to AppMetrica")
        // }
    }
}