import 'dart:io';

import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:safe_ap/core_utils/utilities/log_util.dart';
import 'package:safe_ap/services/push_notification/push_notification_handler.dart';

class FirebaseCloudMessaging {
  final FirebaseMessaging _fcm = FirebaseMessaging.instance;

  Future<void> init() async {
    registerNotification();
    checkForInitialMessage();
  }

  // called when the app in background or killed (Android only)
  static Future<void> _backgroundMessageHandler(RemoteMessage? message) async {
    var messageData = message?.data;
    if (messageData == null || messageData.isEmpty) {
      return;
    }

    await PushNotificationHandler.onBackgroundMessage(messageData);
  }

  // called when the app in background or killed (ios only)
  static Future<void> _backgroundIOSMessageHandler(
      RemoteMessage message) async {}

  void registerNotification() async {
    await Firebase.initializeApp();
    FirebaseMessaging.onBackgroundMessage((message) => Platform.isIOS
        ? _backgroundIOSMessageHandler(message)
        : _backgroundMessageHandler(message));

    var settings = await _fcm.requestPermission(
      alert: true,
      badge: true,
      provisional: false,
      sound: true,
    );

    if (settings.authorizationStatus == AuthorizationStatus.authorized) {
      LogUtil().printLog(message: 'User granted permission');

      FirebaseMessaging.onMessage.listen((RemoteMessage message) {
        LogUtil().printLog(
            message:
                'Message title: ${message.notification?.title}, body: ${message.notification?.body}, data: ${message.data}');

        // Parse the message received

      });
    } else {
      LogUtil()
          .printLog(message: 'User declined or has not accepted permission');
    }
  }

  // For handling notification when the app is in terminated state
  void checkForInitialMessage() async {
    await Firebase.initializeApp();
    var initialMessage = await FirebaseMessaging.instance.getInitialMessage();

    if (initialMessage != null) {
      // Parse the message received

    }
  }
}
