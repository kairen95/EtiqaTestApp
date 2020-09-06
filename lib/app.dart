import 'package:etiqatestapp/screens/staffsquad/staffsquad.dart';
import 'package:etiqatestapp/screens/member/member.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // StaffSquad(); MemberScreen();
      home: StaffSquad(),
      theme: ThemeData(
        primaryColor: Colors.grey[200],
        primaryColorLight: Colors.white,
      ),
    );
  }
}
