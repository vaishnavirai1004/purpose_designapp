import 'package:flutter/material.dart';

import 'DemoPage.dart';
import 'Mainpage.dart';

class Bottombar extends StatefulWidget {
  const Bottombar({Key? key}) : super(key: key);

  @override
  State<Bottombar> createState() => _BottombarState();
}

class _BottombarState extends State<Bottombar> {
  int _pageindex = 0;
  final List<Widget> _tablist = const [
    MyHome(),
    DemoPage(),
    DemoPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          _tablist.elementAt(_pageindex),
          Padding(
            padding: const EdgeInsets.only(left: 45, right: 45, bottom: 20),
            child: Align(
              alignment: Alignment(0.0, 1.0),
              child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(30)),
                child: BottomNavigationBar(
                  iconSize: 35,
                  selectedItemColor: Colors.blueAccent,
                  unselectedItemColor: Colors.black,
                  showSelectedLabels: true,
                  showUnselectedLabels: false,
                  backgroundColor: Colors.white,
                  currentIndex: _pageindex,
                  onTap: (int index) {
                    setState(() {
                      _pageindex = index;
                    });
                  },
                  items: [
                    BottomNavigationBarItem(
                      icon: Icon(Icons.recommend),
                      label: "",
                    ),
                    BottomNavigationBarItem(
                      icon: Icon(Icons.home),
                      label: "    ",
                    ),
                    BottomNavigationBarItem(
                      icon: Icon(Icons.book),
                      label: "   ",
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
