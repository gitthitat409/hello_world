import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        drawer: Drawer(
          child: Text("Hello Drawer"),
        ),
        appBar: AppBar(
          title: Text("My First Project"),
        ),
        body: Center(
          child: Column(
            children: [
              Container(
                color: Colors.red,
                child: Text("รูปแมว"),
              ),
              Text("เข้าใจมั้ย"),
              Container(
                width: 200,
                height: 150,
                color: Colors.green,
                child: Image.asset('assets/images/12.jpg'),
              ),
              DropdownButton(
     hint: Text("ทายสิอะไรเอ๋ย?"),
     items: [
         DropdownMenuItem(
             onTap: () {},
             value: 1,
             child: Text("แมว"),
         ),
         DropdownMenuItem(
             onTap: () {},
             value: 1,
              child: Text("สุนัข"),
         )
     ],
     onChanged: (int value) {},
),
              ElevatedButton(
                onPressed: () {},
                child: Text("กดปุ่มนี้ดู"),
              )
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.phone),
              label: "Phone",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.dashboard_customize),
              label: "Dashboard",
            ),
          ],
        ),
      ),
    );
  }
}
