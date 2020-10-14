import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:phone/custom_widgets/widgets.dart';
import 'package:phone/screens/call_history.dart';
import 'package:phone/screens/favorite.dart';
import 'package:phone/screens/contacts.dart';

// defining the navigation widget here

class Nav extends StatefulWidget {
  _NavState createState() => _NavState();
}

class _NavState extends State<Nav> with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    super.initState();

    _tabController = TabController(length: 3, vsync: this);
    _tabController.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  List<Widget> _pages = [
    FavoriteScreen(),
    CallHistoryScreen(),
    Contact(),
  ];

  @override
  Widget build(BuildContext context) {
    Size screen_size = MediaQuery.of(context).size;
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
        statusBarColor: Colors.grey[50],
        statusBarBrightness: Brightness.dark,
        statusBarIconBrightness: Brightness.dark));

    return Scaffold(
      appBar: PreferredSize(
          child: SafeArea(
              child: TabBarMain(
            tabController: _tabController,
          )),
          preferredSize: Size(screen_size.width, 50)),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print('keys pad pressed');
        },
        child: Icon(Icons.dialpad, color: Colors.white),
        backgroundColor: Colors.greenAccent,
        elevation: 0,
      ),
      body: TabBarView(
        children: _pages,
        controller: _tabController,
      ),
    );
  }
}
