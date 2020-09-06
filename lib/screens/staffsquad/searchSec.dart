import 'package:flutter/material.dart';
import 'package:etiqatestapp/models/member.dart';

import '../member/iconBtn.dart';

// class SearchSection extends StatefulWidget {

//   SearchSection({Key key,}) : super(key: key);

//   @override
//   _SearchSectionState createState() => _SearchSectionState();
// }

class SearchSection extends StatelessWidget {
  TextEditingController editingController = TextEditingController();
  static const double _hPad = 16.0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(
        _hPad,
        16.0,
        _hPad,
        8.0,
      ),
      child: Container(
        constraints: BoxConstraints.expand(
          height: 80.0,
        ),
        child: Row(children: [
          Container(
            width: 50.0,
            decoration: ShapeDecoration(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(4),
              ),
            ),
            child: IconBtn(Icon(Icons.dehaze)),
          ),
          Container(
            padding: EdgeInsets.only(left: 16.0),
            width: 200.0,
            child: TextField(
              onChanged: (value) {
              },
              controller: editingController,
              decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  labelText: "Search Member",
                  hintText: "Search Member",
                  prefixIcon: Icon(Icons.search),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(4.0)))),
            ),
          ),
          Spacer(),
          Container(
            width: 50.0,
            height: 50.0,
            decoration: ShapeDecoration(
              color: Colors.lightBlue,
              shape: CircleBorder(),
            ),
            child: Center(
                child: Text(
              'TA',
              style: TextStyle(color: Colors.white),
            )),
          ),
        ]),
      ),
    );
  }

  
}
