import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'App.dart';
import 'Services/PlatformServices/PushNotificationService/PushNotificationService.dart';
import 'firebase_options.dart';

void main(List<String> args) async {
  // to initialize firebase app

  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  // for getting the fcm registeration token
  getToken();

  // on background message pass the method from the service

  FirebaseMessaging.onBackgroundMessage(handleBackgroundMessage);

  FirebaseMessaging.onMessage.listen(handleForegroundMessage);

  runApp(const MyApp());
}
