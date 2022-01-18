import 'package:flutter/material.dart';
import 'package:padrao/login_page.dart';
import 'package:padrao/my_stful_widget.dart';
import 'app_controller.dart';
import 'home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: AppController.instance,
        builder: (context, child) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
              primarySwatch: Colors.red,
              brightness: AppController.instance.isDarkTheme
                  ? Brightness.dark
                  : Brightness.light,
            ),
            initialRoute: '/',
            routes: {
              '/': (context) => LoginPage(),
              '/home': (context) => HomePage(),
              '/forgotPassword': (context) => MyStatefulWidget(title: 'Recuperar Senha'),
            },
          );
        });
  }
}
