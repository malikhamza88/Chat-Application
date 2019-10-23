import 'package:flash_chat/constants.dart';
import 'package:flutter/material.dart';
import 'package:flash_chat/screens/welcome_screen.dart';
import 'package:flash_chat/screens/login_screen.dart';
import 'package:flash_chat/screens/registration_screen.dart';
import 'package:flash_chat/screens/chat_screen.dart';
import 'package:flutter/services.dart';

void main() {
  SystemChrome.setEnabledSystemUIOverlays([]);
  runApp(FlashChat());
}

class FlashChat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: kWelcomeScreen,
      debugShowCheckedModeBanner: false,
      routes: {
        kWelcomeScreen: (context) => WelcomeScreen(),
        kChatScreen: (context) => ChatScreen(),
        kLoginScreen: (context) => LoginScreen(),
        kRegistrationScreen: (context) => RegistrationScreen()
      },
    );
  }
}
