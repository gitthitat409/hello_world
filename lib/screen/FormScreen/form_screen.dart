import 'package:flutter/material.dart';

class FromScreen extends StatefulWidget {
  FromScreen({Key key}) : super(key: key);

  @override
  _FromScreenState createState() => _FromScreenState();
}

class _FromScreenState extends State<FromScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        drawer: Drawer(
          child: Text("this is from the screen"),
        ),
        appBar: AppBar(
          title: Text("this is from the screen"),
        ),
        body: Center(
          child: Form(
            child: Column(
              children: [
                TextFormField(
                  decoration: InputDecoration(
                    labelText: "ชื่อ-สกุล",
                  ),
                ),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: "E-mail",
                  ),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Text("บันทึก"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
