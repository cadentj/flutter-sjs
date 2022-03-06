import 'package:flutter/material.dart';
import 'package:sjs_app/views/calendar.dart';
import 'table_calendar.dart';

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  late PageController _myPage;
  var selectedPage;

  @override
  void initState() {
    super.initState();
    _myPage = PageController(initialPage: 1);
    selectedPage = 1;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: PageView(
          physics: const NeverScrollableScrollPhysics(),
          controller: _myPage,
          children: <Widget>[
            const Center(
              child: Text("Another Page"),
            ),
            Center(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Text("Page 1"),
                ElevatedButton(
                  onPressed: () {
                    _myPage.jumpToPage(0);
                    setState(() {
                      selectedPage = 0;
                    });
                  },
                  child: const Text("Go to another page"),
                )
              ],
            )),
            const Center(child: Text("Page 2")),
            const Calendar(),
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
