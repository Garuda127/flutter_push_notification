import 'package:flutter/material.dart';
import 'package:flutter_push_notification/screens/screens.dart';
import 'package:flutter_push_notification/services/push_notification_service.dart';

void main() async {
  WidgetsFlutterBinding
      .ensureInitialized(); //! importante:evita que la aplicacion se detenga por no tener widgets

  PushNotificationService.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
  final GlobalKey<ScaffoldMessengerState> messengerKey =
      GlobalKey<ScaffoldMessengerState>();
  @override
  void initState() {
    super.initState();
    PushNotificationService.messageStream.listen((message) {
      print('MyApp: $message');
      final snackBar = SnackBar(content: Text(message));
      messengerKey.currentState?.showSnackBar(snackBar);

      navigatorKey.currentState
          ?.pushNamed(MessageScreen.routerScreen, arguments: message);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      initialRoute: HomeScreen.routerScreen,
      navigatorKey: navigatorKey,
      scaffoldMessengerKey: messengerKey, //mostrar snacks
      routes: {
        HomeScreen.routerScreen: (_) => const HomeScreen(),
        MessageScreen.routerScreen: (_) => const MessageScreen(),
      },
    );
  }
}
