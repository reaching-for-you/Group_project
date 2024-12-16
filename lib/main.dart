import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Navigation Bar',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;

  // 화면을 전환하기 위한 리스트
  static const List<Widget> _widgetOptions = <Widget>[
    CategoryPage(category: 'Category 1'),
    CategoryPage(category: 'Category 2'),
    CategoryPage(category: 'Category 3'),
    CategoryPage(category: 'Category 4'),
    CategoryPage(category: 'Category 5'),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Navigation Bar'),
      ),
      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.category),
            label: 'Category 1',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.category),
            label: 'Category 2',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.category),
            label: 'Category 3',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.category),
            label: 'Category 4',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.category),
            label: 'Category 5',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue, // 선택된 아이템 색상
        unselectedItemColor: Colors.black, // 선택되지 않은 아이템 색상
        onTap: _onItemTapped,
      ),
    );
  }
}

class CategoryPage extends StatelessWidget {
  final String category;

  const CategoryPage({Key? key, required this.category}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        '$category Screen',
        style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
      ),
    );
  }
}
