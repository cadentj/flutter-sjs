import 'package:flutter/material.dart';
import 'package:sjs_app/views/calendar.dart';
import 'package:sjs_app/views/resources_screen.dart';
import 'package:sjs_app/views/schedule_screen.dart';

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  late PageController _myPage;
  late int selectedPage;

  @override
  void initState() {
    super.initState();
    _myPage = PageController(initialPage: 2);
    selectedPage = 2;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: PageView(
          physics: const NeverScrollableScrollPhysics(),
          controller: _myPage,
          children: const <Widget>[
            Center(
              child: Text("Another Page (0)"),
            ),
            Center(child: Resources()),
            Center(child: Schedule()),
            Calendar(),
          ],
        ),
        bottomNavigationBar: BottomAppBar(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              createIconButton(1),
              createIconButton(2),
              createIconButton(3),
            ],
          ),
        ));
  }

  IconButton createIconButton(int pageNumber) {
    return IconButton(
      icon: const Icon(
        Icons.layers,
      ),
      color: selectedPage == pageNumber ? Colors.blue : Colors.grey,
      onPressed: () {
        _myPage.jumpToPage(pageNumber);
        setState(() {
          selectedPage = pageNumber;
        });
      },
    );
  }
}
