import 'package:flutter/material.dart';
import '../member/iconBtn.dart';
import 'searchSec.dart';
import 'displaySec.dart';

class StaffSquad extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconBtn(Image.asset('assets/images/logo.png')),
        actions: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Ink(
              decoration: ShapeDecoration(
                color: Colors.yellow,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(4),
                ),
              ),
              child: IconBtn(Icon(Icons.notifications_none)),
            ),
          ),
          IconBtn(Image.asset('assets/images/profile.png')),
        ],
      ),
      body: Container(
        color: Theme.of(context).primaryColor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SearchSection(),
            DisplaySection(),
          ],
        ),
      ),
    );
  }
}
