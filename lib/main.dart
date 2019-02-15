import 'package:flutter/material.dart';
import 'Home/MineDrawer.dart';
import 'Pages/home.dart';
import 'Pages/loan.dart';
import 'Pages/question.dart';
import 'Pages/mine.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: '广发互联小贷'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  List tabs = ['主页', '贷款', '常见问题', '我的'];
  int _selectedIndex = 0;
  final _bottomNavigationColor = Colors.grey;
  PageController _pageController = PageController(initialPage: 0);

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  void _onItemTapped(int index) {
    _pageController.jumpToPage(index);
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
        actions: <Widget>[
          IconButton(
              icon: Icon(
                Icons.message,
                color: Colors.white,
              ),
              onPressed: null)
        ],
        leading: Builder(builder: (context) {
          return IconButton(
            icon: Icon(Icons.dashboard),
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
          );
        }),
      ),
      drawer: MineDrawer(),
      body: PageView(
        children: <Widget>[Home(), Loan(), Question(), Mine()],
        controller: _pageController,
        physics: NeverScrollableScrollPhysics(),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: _bottomNavigationColor,
              ),
              activeIcon: Icon(
                Icons.home,
                color: Colors.blue,
              ),
              title: Text(
                tabs[0],
                style: TextStyle(color: _bottomNavigationColor),
              )),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.monetization_on,
                color: _bottomNavigationColor,
              ),
              activeIcon: Icon(
                Icons.monetization_on,
                color: Colors.blue,
              ),
              title: Text(
                tabs[1],
                style: TextStyle(color: _bottomNavigationColor),
              )),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.device_unknown,
                color: _bottomNavigationColor,
              ),
              activeIcon: Icon(
                Icons.device_unknown,
                color: Colors.blue,
              ),
              title: Text(
                tabs[2],
                style: TextStyle(color: _bottomNavigationColor),
              )),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.person_outline,
                color: _bottomNavigationColor,
              ),
              activeIcon: Icon(
                Icons.person_outline,
                color: Colors.blue,
              ),
              title: Text(
                tabs[3],
                style: TextStyle(color: _bottomNavigationColor),
              )),
        ],
        currentIndex: _selectedIndex,
        fixedColor: Colors.blue,
        onTap: _onItemTapped,
        type: BottomNavigationBarType.fixed,
      ),
    );
  }
}
