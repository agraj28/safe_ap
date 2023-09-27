import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

class LocalNotifications {
  final _flutterLocalNotificationsPlugin = FlutterLocalNotificationsPlugin();

  Future<void> initialize() async {
    const initializationSettingsAndroid =
        AndroidInitializationSettings('app_icon');
    //create channel

    final initializationSettingsIOS = IOSInitializationSettings(
        onDidReceiveLocalNotification: (id, title, body, payload) async {
      await onSelectNotification(payload);
    });

    final initializationSettings = InitializationSettings(
        android: initializationSettingsAndroid, iOS: initializationSettingsIOS);

    await _flutterLocalNotificationsPlugin.initialize(
      initializationSettings,
      onSelectNotification: onSelectNotification,
    );
  }

  Future onSelectNotification(String? payload) async {
    // TODO: Common This is to be handled by the domain services
    //to route
  }

  // On going notification
  /// [notificationChannelId] This is the notification channel id,
  /// we can use this id for the clear all the push from the particular channel
  /// [notificationChannelName] This is the notification channel name shown
  /// under App Settings
  /// [notificationChannelDes] Description of the notification channel
  Future<void> showStandardNotification(
      {@required String? title,
      @required String? body,
      int id = 0,
      String? payload}) async => _showNotification(
      _flutterLocalNotificationsPlugin,
      title: title ?? '',
      body: body ?? '',
      id: id,
      payload: payload ?? '',
      type: null,
    );

  // FUNCTIONS FOR NOTIFICATIONS
  Future _showNotification(
    FlutterLocalNotificationsPlugin notifications, {
    @required String? title,
    @required String? body,
    @required NotificationDetails? type,
    String? payload,
    int id = 0,
  }) => notifications.show(id, title, body, type, payload: payload);

  /// Only for [Android],
  /// To remove the notification from system tray using the notification id.
  Future<void> cancelNotificationWithID(int id) async {
    await _flutterLocalNotificationsPlugin.cancel(id);
  }
}
