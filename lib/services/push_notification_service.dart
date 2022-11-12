import 'dart:async';

import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_push_notification/firebase_options.dart';

class PushNotificationService {
  static FirebaseMessaging messaging = FirebaseMessaging.instance;
  static String? token;
  static final StreamController<String> _messageStreamController =
      StreamController.broadcast();
  static Stream<String> get messageStream => _messageStreamController.stream;

  static Future _backgroundHandler(RemoteMessage message) async {
    _messageStreamController.add(message.notification?.title ?? 'No title');
  }

  static Future _onMessageHandler(RemoteMessage message) async {
    _messageStreamController.add(message.data['product'] ?? 'No data');
  }

  static Future _onMessageOpenApp(RemoteMessage message) async {
    _messageStreamController.add(message.data['product'] ?? 'No data');
  }

  static Future initializeApp() async {
    //* push notification
    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );

    token = await FirebaseMessaging.instance.getToken();
    if (kDebugMode) {
      print('token Dispoisitivo: $token');
    }
    //? handlers
    FirebaseMessaging.onBackgroundMessage(_backgroundHandler);
    FirebaseMessaging.onMessage.listen(_onMessageHandler);
    FirebaseMessaging.onMessageOpenedApp.listen(_onMessageOpenApp);
  }

  static closeStream() {
    _messageStreamController.close();
  }
}
