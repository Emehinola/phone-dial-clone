import 'package:flutter/material.dart';
import 'package:phone/custom_widgets/widgets.dart';
import 'package:phone/fetchers/fetchers.dart';
import 'package:phone/models/models.dart';

class Contact extends StatefulWidget {
  @override
  _ContactState createState() => _ContactState();
}

class _ContactState extends State<Contact> {
  List<CallHistory> contacts = getCallHistories();

  GlobalKey key = GlobalKey();
  double height;

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      RenderBox obj = key.currentContext.findRenderObject();
      height = obj.size.height;
      print('inner: $height');
      setState(() {});
    });
    print('outside: $height');
    super.initState();
  }

  List<String> _letters = [
    'A',
    'B',
    'C',
    'D',
    'E',
    'F',
    'G',
    'H',
    'I',
    'J',
    'K',
    'L',
    'M',
    'N',
    'O',
    'P',
    'Q',
    'R',
    'S',
    'T',
    'U',
    'V',
    'W',
    'X',
    'Y',
    'Z'
  ]; // ALPHABETS

  List<Widget> vert() {
    List<Widget> all = [];
    for (var index = 0; index <= 25; index++) {
      all.add(Text('${_letters[index]}',
          style: TextStyle(fontSize: 19, color: Colors.grey)));
    }
    return all;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      key: key,
      child: Column(
        children: [
          Container(
            height: 100,
            color: Colors.white,
            child: Top(),
          ),
          Container(
            height: 19,
            width: double.infinity,
            color: Colors.grey[200],
            padding: EdgeInsets.symmetric(horizontal: 13, vertical: 2),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('H'),
                Text('#', style: TextStyle(color: Colors.grey[700]))
              ],
            ),
          ),
          Container(
            height: (height ?? 119) - 119,
            child: Stack(
              children: [
                ListView(
                  physics: AlwaysScrollableScrollPhysics(),
                  shrinkWrap: true,
                  children: [
                    SingleChildScrollView(
                      child: ListView.builder(
                          physics: NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          itemCount: contacts.length,
                          itemBuilder: (BuildContext contex, int index) {
                            return ListTile(
                              leading: contactAvartar(Colors.blueAccent),
                              title: Text(contacts[index].name),
                            );
                          }),
                    ),
                  ],
                ),
                Positioned(right: 13, child: Column(children: vert()))
              ],
            ),
          )
        ],
      ),
    );
  }
}
