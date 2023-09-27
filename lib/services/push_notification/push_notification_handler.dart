import 'dart:math';

import 'package:firebase_core/firebase_core.dart';
import 'package:safe_ap/core_utils/utilities/common_utils.dart';
import 'package:safe_ap/services/push_notification/local_notification_service.dart';

class PushNotificationHandler {
  factory PushNotificationHandler() {
    return PushNotificationHandler._internal();
  }

  PushNotificationHandler._internal();

  Future<void> onMessage(Map<String, dynamic> messageData) async {
    if (messageData['dialog_id'] != null) {
      await LocalNotifications().showStandardNotification(
          id: Random().nextInt(100),
          title: 'IM new message',
          body: messageData['message'],
          payload: getLNPayloadString('im', {}));

      return;
    }

    var messageRequestType = messageData['request_type'];
    if (messageRequestType == null) {
      return;
    }
  }

  static Future<void> onBackgroundMessage(
      Map<String, dynamic> messageData) async {
    if (messageData['dialog_id'] != null) {
      await LocalNotifications().showStandardNotification(
          id: Random().nextInt(100),
          title: 'IM new message',
          body: messageData['message'],
          payload: getLNPayloadString('im', {}));

      return;
    }

    var messageRequestType = messageData['request_type'];
    if (messageRequestType == null) {
      return;
    }

    // If you're going to use other Firebase services in the background,
    // such as Firestore,Refresh googleSignin
    // make sure you call `initializeApp` before using other Firebase services.
    await Firebase.initializeApp();
  }
}
