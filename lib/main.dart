import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(
        title: 'Flutter Demo',
        name: "Marianne",
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title, required this.name})
      : super(key: key);

  final String title;
  final String name;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width * .5;
    final height = MediaQuery.of(context).size.height * .5;
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.name),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Container(
              child: Center(
                  child: Text("Marianne",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold))),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.blue,
              ),
              width: 100,
              height: 100,
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.red,
              ),
              width: 100,
              height: 100,
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.orange,
              ),
              width: 100,
              height: 100,
            ),
          ],
        ),
      ),
      drawer: Drawer(
        child: ListView(
          children: [Text("Some Text")],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 1,
        unselectedIconTheme: IconThemeData(color: Colors.white),
        backgroundColor: Color(0xFF000000),
        items: [
          BottomNavigationBarItem(
            label: "",
            icon: Icon(Icons.home),
            activeIcon: Icon(Icons.bed),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add),
            activeIcon: Icon(Icons.face),
            label: "",
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.notification_add),
              label: "",
              activeIcon: Icon(Icons.phone)),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        //isExtended: true,
        onPressed: () {},
        child: Icon(Icons.add),
      ),
    );
  }
}
