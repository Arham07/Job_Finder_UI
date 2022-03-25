import 'package:flutter/material.dart';
import 'package:job_finder_ui/screens/home/home_screen.dart';
import 'package:job_finder_ui/screens/textscreens/test1.dart';
import 'package:job_finder_ui/screens/textscreens/test2.dart';
import 'package:job_finder_ui/screens/textscreens/test3.dart';
import 'commons/bottom_tab_bar.dart';


class MainScreen extends StatefulWidget {
  MainScreen({Key? key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int pageIndex = 0;

  final List<Widget> pageList = <Widget>[
    HomeScreen(),
    Test1(),
    Test2(),
    Test3(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Theme.of(context).colorScheme.secondary,
        onPressed: () {},
        child: Icon(Icons.add),
        // shape: CircularNotchedRectangle,
      ),
      body: pageList[pageIndex],
      bottomNavigationBar: BottomTabBar(
        index:pageIndex,
        onChangedTab:OnChangeTab,
      ),
    );
  }
  void OnChangeTab(int index){
    setState(() {
      this.pageIndex=index;
    });
  }
}