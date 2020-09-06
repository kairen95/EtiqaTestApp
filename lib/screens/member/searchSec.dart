import 'package:flutter/material.dart';
import 'package:etiqatestapp/models/member.dart';

import 'iconBtn.dart';

class SearchSection extends StatefulWidget {
  static const double _hPad = 16.0;
  final Function(List<Member>) notifyParent;
  final List<Member> members;
  List<Member> items;

  SearchSection({Key key, this.members, this.items, this.notifyParent}) : super(key: key);

  @override
  _SearchSectionState createState() => _SearchSectionState();
}

class _SearchSectionState extends State<SearchSection> {
  TextEditingController editingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(
          SearchSection._hPad, 16.0, SearchSection._hPad, 8.0),
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
              onChanged: (value){
                filterSearchResults(value);
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

  void filterSearchResults(String query) {
    // List<String> dummySearchList = List<String>();
    // dummySearchList.addAll(widget.members);
    print('typing.....');
    if (query.isNotEmpty) {
      print('query not empty');
      List<Member> dummyListData = List<Member>();
      widget.members.forEach((item) {
        if (item.name.toLowerCase().contains(query.toLowerCase())) {
          dummyListData.add(item);
          print(item.name);
        }
      });
      setState(() {
        widget.items.clear();
        widget.items.addAll(dummyListData);
        widget.notifyParent(widget.items);
      });
      return;
    } else {
      setState(() {
        widget.items.clear();
        widget.notifyParent(widget.items);
        // widget.items.addAll(duplicateItems);
      });
    }
  }
}
