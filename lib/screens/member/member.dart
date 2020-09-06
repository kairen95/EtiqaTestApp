import 'package:etiqatestapp/screens/member/displaySec.dart';
import 'package:etiqatestapp/screens/member/iconBtn.dart';
import 'package:etiqatestapp/screens/member/searchSec.dart';
import 'package:flutter/material.dart';
import 'package:etiqatestapp/models/member.dart';

class MemberScreen extends StatefulWidget {
  @override
  _MemberScreenState createState() => _MemberScreenState();
}

class _MemberScreenState extends State<MemberScreen> {
  var members = Member.fetchAll();
  var items = List<Member>();
  

  refresh(List<Member> itemsFromChild) {
    print("Notified");
    setState(() {
      items = itemsFromChild;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
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
            SearchSection(
              members: members,
              items: items,
              notifyParent: refresh,
            ),
            DisplaySection(members: members, items: items),
          ],
        ),
      ),
    );
  }
}
