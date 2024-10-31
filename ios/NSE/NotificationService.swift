//
//  NotificationService.swift
//  NSE
//
//  Created by artprograms on 10.09.2024.
//

import UserNotifications
import AppMetricaPush

class NotificationService: UNNotificationServiceExtension {
    
    var contentHandler: ((UNNotificationContent) -> Void)?
    var bestAttemptContent: UNMutableNotificationContent?
    private let syncQueue = DispatchQueue(label: "NotificationService.syncQueue")

    override func didReceive(_ request: UNNotificationRequest, withContentHandler contentHandler: @escaping (UNNotificationContent) -> Void) {
        self.contentHandler = contentHandler
        bestAttemptContent = (request.content.mutableCopy() as? UNMutableNotificationContent)

        if let bestAttemptContent = bestAttemptContent {
            AppMetricaPush.setExtensionAppGroup("group.push.slepayakurica")
            AppMetricaPush.handleDidReceive(request)
            // Modify the notification content here...
            bestAttemptContent.title = "\(bestAttemptContent.title)"
            bestAttemptContent.body = "\(bestAttemptContent.body) "

            contentHandler(bestAttemptContent)
        }
    }
    
    override func serviceExtensionTimeWillExpire() {
        // Called just before the extension will be terminated by the system.
        // Use this as an opportunity to deliver your "best attempt" at modified content, otherwise the original push payload will be used.
        if let contentHandler = contentHandler, let bestAttemptContent =  bestAttemptContent {
            contentHandler(bestAttemptContent)
        }
        completeWithBestAttempt(attachments: nil)
    }

    func completeWithBestAttempt(attachments: [UNNotificationAttachment]?) {
        syncQueue.sync {
            if let contentHandler = contentHandler, let bestAttemptContent = bestAttemptContent {
                if let attachments = attachments {
                    bestAttemptContent.attachments = attachments
                }
                contentHandler(bestAttemptContent)
                self.bestAttemptContent = nil
                self.contentHandler = nil
            }
        }
    }
}
