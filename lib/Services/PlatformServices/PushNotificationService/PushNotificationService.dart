import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';


FirebaseMessaging messaging = FirebaseMessaging.instance;

  final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
      FlutterLocalNotificationsPlugin();

// Method to get token
Future<void> getToken() async {
  debugPrint("<<<<<<<<<<<<<<<<<<<<<<<<gettoken trigeered>>>>>>>>>>>>>>");
  String? token = await messaging.getToken(
      vapidKey:
          "BJSsCcl8uR0jZystiYmlpW7uhIPvnJ09nO6i45o6cjyBh99cR_t-pA-WUMnKQt76LkY8bI0cppvflGHQBliY_kE");
  debugPrint(
      "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@$token@@@@@@@@@@@@@@@@@@@@@@@@@@@@");

      FirebaseMessaging.instance.onTokenRefresh
    .listen((fcmToken) {
      debugPrint("######################## Refreshed Token : $token ########################");
    })
    .onError((err) {
      debugPrint("############# $err ###########");
    });
}

// method to handle background message
Future<void> handleBackgroundMessage(RemoteMessage message) async {
  debugPrint("<<<<<<<<<<<<<<<<<<<<<<<<background>>>>>>>>>>>>>>");
  debugPrint("Handling a background message: ${message.messageId}");
}

// method to handle foreground notification
Future<void> handleForegroundMessage(RemoteMessage message) async {
    debugPrint("<<<<<<<<<<<<<<<<<<<<<<<<foreground>>>>>>>>>>>>>>");
  await messaging.requestPermission();
  showNotification(      message.notification!.title.toString(),
      message.notification!.body.toString(),);
  debugPrint(message.notification?.title);
  debugPrint(message.notification?.body);
  debugPrint(message.toString());
  debugPrint("Handling a Foreground message: ${message.messageId}");

  //For IOS foreground message
  await FirebaseMessaging.instance.setForegroundNotificationPresentationOptions(
    alert: true,
    badge: true,
    sound: true,
  );
}

// to show the local notification
Future<void>  showNotification(String title, String body) async{
    int id = 1;
    debugPrint("###############INVOKED#######################");
    await flutterLocalNotificationsPlugin.show(
      id++,
      title,
      body,
      const NotificationDetails(
        android: AndroidNotificationDetails(
          'errorNotificationSubscriberChannel',
          'errorNotificationSubscriberChannel Channel',
          channelDescription: 'Main channel notifications',
          importance: Importance.max,
          priority: Priority.max,
        ),
        iOS: DarwinNotificationDetails(
          sound: 'default.wav',
          presentAlert: true,
          presentBadge: true,
          presentSound: true,
        ),
      ),
    );
}

















