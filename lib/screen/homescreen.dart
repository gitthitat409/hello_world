import 'package:flutter/material.dart';
import 'package:hello_world/screen/FormScreen/example.dart';
import 'package:hello_world/screen/FormScreen/form_screen.dart';
import 'package:hello_world/screen/list_view_screen.dart';

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
                child: Image.asset('https://s.isanook.com/wo/0/rp/r/w728/ya0xa0m1w0/aHR0cHM6Ly9zLmlzYW5vb2suY29tL3dvLzAvdWQvMjcvMTM1NTY5L2wxLmpwZw==.jpg'),
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
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ListViewScreen(),
                    ),
                  );
                },
                child: Text("กดปุ่มนี้ดู"),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => FromScreen(),
                    ),
                  );
                },
                child: Text("fromscreen"),
              ),
               ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Example(),
                    ),
                  );
                },
                child: Text("Example"),
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
