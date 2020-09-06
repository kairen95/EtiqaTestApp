import 'package:flutter/material.dart';
import 'package:etiqatestapp/models/member.dart';

class DisplaySection extends StatefulWidget {
  static const double _hPad = 16.0;
  final List<Member> members;
  List<Member> items;

  DisplaySection({Key key, this.members, this.items}) : super(key: key);

  @override
  _DisplaySectionState createState() => _DisplaySectionState();
}

class _DisplaySectionState extends State<DisplaySection> {
  int _value = 1;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(
          DisplaySection._hPad, 8.0, DisplaySection._hPad, 8.0),
      // child: Container(
      // constraints: BoxConstraints.expand(
      //   height: 200.0,
      // ),

      child: Column(
        children: [
          ConstrainedBox(
            constraints: BoxConstraints(
              maxHeight: 100.0,
              minHeight: 0.0,
            ),
            child: ListView(
              children: []..addAll(displaySections(widget.items)),
              shrinkWrap: true,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Container(
              height: 300.0,
              color: Colors.white,
              child: Center(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: RichText(
                          text: TextSpan(
                              text: 'Objective ',
                              style: TextStyle(
                                fontSize: 20.0,
                                color: Colors.black,
                              ),
                              children: [
                                TextSpan(
                                    text: "Where do I want to go?",
                                    style: TextStyle(
                                        fontSize: 16.0,
                                        fontStyle: FontStyle.italic))
                              ]),
                        ),
                      ),
                      Text('Your Objectives to achieve the goals'),
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: RichText(
                          text: TextSpan(
                              text: 'Key Result ',
                              style: TextStyle(
                                fontSize: 20.0,
                                color: Colors.black,
                              ),
                              children: [
                                TextSpan(
                                    text: "How do I get to there?",
                                    style: TextStyle(
                                        fontSize: 16.0,
                                        fontStyle: FontStyle.italic))
                              ]),
                        ),
                      ),
                      Text('Action Plans to achieve Key Result Areas'),
                      Padding(
                        padding: const EdgeInsets.only(top: 16.0),
                        child: Container(
                          padding: EdgeInsets.all(16.0),
                          child: TextField(
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.grey[200],
                              hintText: "Type New Objectives here",
                              suffixIcon: IconButton(
                                onPressed: null,
                                icon: Icon(
                                  Icons.add_circle,
                                  color: Colors.lightBlue,
                                ),
                              ),
                              border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(4.0)),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ]),
              ),
            ),
          ),
        ],
      ),
    );
  }

  List<Widget> displaySections(List<Member> items) {
    return items.map((item) => displayContainer(item)).toList();
  }

  Widget displayContainer(Member item) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        padding: const EdgeInsets.all(12.0),
        height: 100.0,
        color: Theme.of(context).primaryColorLight,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              item.name,
              style: TextStyle(fontSize: 21.0),
            ),
            DropdownButton(
                value: _value,
                items: [
                  DropdownMenuItem(
                    child: Text(
                      "Q2-2019",
                      style: TextStyle(color: Colors.grey[400]),
                    ),
                    value: 1,
                  ),
                  DropdownMenuItem(
                    child: Text(
                      "Q3-2019",
                      style: TextStyle(color: Colors.grey[400]),
                    ),
                    value: 2,
                  ),
                  DropdownMenuItem(child: Text("Q4-2019"), value: 3)
                ],
                onChanged: (value) {
                  setState(() {
                    _value = value;
                  });
                }),
          ],
        ),
      ),
    );
  }
}
