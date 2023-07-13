import 'package:bitsmith_first/screens/chat_screen.dart';
import 'package:bitsmith_first/screens/chat_screen2.dart';

import 'package:bitsmith_first/screens/qrcode_screen.dart';
import 'package:bitsmith_first/screens/settings_screen_2.dart';
import 'package:bitsmith_first/screens/sign_up_screen.dart';
import 'package:bitsmith_first/screens/Transactions/transactions_screen.dart';
import 'package:flutter/material.dart';
import 'screens/settings_screen.dart';

void main (){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  const MaterialApp(
      debugShowCheckedModeBanner: false,
      //home: SettingsScreen(),
      //home: SettingsScreen2(),
      //home: QrCodeScreen(),
      //home: ChatScreen(),
      //home: SignUpScreen(),
      //home: ChatScreen2(),
      home: TransactionsScreen(),

    );
  }
}