import 'package:flutter/material.dart';
import 'package:hello_app/pages/AccountPage.dart';
import 'package:hello_app/pages/HomePage.dart';
import 'package:hello_app/pages/WorkPage.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  int _selectedPage = 0;
  final _pageOptions = [HomePage(), WorkPage(), AccountPage()];

  @override
  Widget build(BuildContext context) {
    final String _title = "Bottom Navigation";
    return MaterialApp(
      title: _title,
      theme: ThemeData(primarySwatch: Colors.blue),
      home: Scaffold(
        appBar: AppBar(title: Text(_title)),
        body: _pageOptions[_selectedPage],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedPage,
          onTap: (int index) {
            setState(() {
              _selectedPage = index;
            });
          },
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.home), title: Text("Home")),
            BottomNavigationBarItem(
                icon: Icon(Icons.work), title: Text("Work")),
            BottomNavigationBarItem(
                icon: Icon(Icons.person), title: Text("Account")),
          ],
        ),
      ),
    );
  }
}
