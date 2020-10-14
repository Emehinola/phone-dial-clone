import 'package:flutter/material.dart';
import 'package:phone/screens/screens.dart';

// ignore: must_be_immutable
class TabBarMain extends StatefulWidget {
  int tabLength;
  TabController tabController;

  TabBarMain({@required this.tabController});

  @override
  _TabBarMainState createState() => _TabBarMainState();
}

class _TabBarMainState extends State<TabBarMain>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    Size _screen_size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.only(bottom: 0),
      decoration: BoxDecoration(
          color: Colors.grey[50],
          border: Border(bottom: BorderSide(color: Colors.grey[350]))),
      height: kToolbarHeight,
      width: _screen_size.width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        mainAxisSize: MainAxisSize.min,
        children: [
          Expanded(
            child: TabBar(
              indicatorPadding: EdgeInsets.only(
                left: 10,
                right: 10,
                bottom: 0,
              ),
              indicatorColor: Colors.greenAccent,
              indicatorWeight: 3.0,
              labelStyle: TextStyle(fontWeight: FontWeight.bold),
              controller: widget.tabController,
              tabs: [
                Tab(
                  child: Text('Favorites',
                      style: widget.tabController.index == 0
                          ? TextStyle(
                              color: Colors.greenAccent,
                              fontSize: 15,
                              fontWeight: FontWeight.w500)
                          : TextStyle(
                              color: Colors.grey,
                              fontSize: 15,
                              fontWeight: FontWeight.w500)),
                ),
                Tab(
                    child: Text('Call History',
                        style: widget.tabController.index == 1
                            ? TextStyle(
                                color: Colors.greenAccent,
                                fontSize: 15,
                                fontWeight: FontWeight.w500)
                            : TextStyle(
                                color: Colors.grey,
                                fontSize: 15,
                                fontWeight: FontWeight.w500))),
                Tab(
                    child: Text('Contacts',
                        style: widget.tabController.index == 2
                            ? TextStyle(
                                color: Colors.greenAccent,
                                fontSize: 15,
                                fontWeight: FontWeight.w500)
                            : TextStyle(color: Colors.grey, fontSize: 15)))
              ],
            ),
          ),
          IconButton(
              icon: Icon(Icons.more_vert),
              onPressed: () {
                print('more pressed');
              }),
        ],
      ),
    );
  }
}
