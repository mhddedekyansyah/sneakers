import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sizer/sizer.dart';
import 'package:sneakers/ui/pages/pages.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        const SystemUiOverlayStyle(statusBarColor: Colors.transparent));
    return Sizer(
      builder: (context, orientation, deviceType) {
        return MaterialApp(
          initialRoute: '/',
          routes: {
            '/': (context) => const Splash(),
            '/sign-in': (context) => SignIn(),
            '/sign-up': (context) => SignUp(),
            '/home': (context) => Home(),
            '/main-home': (context) => MainHome()
          },
          debugShowCheckedModeBanner: false,
        );
      },
    );
  }
}
