import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: Column(
          children: [
            ContactList(),
            ContactList(),
            ContactList(),
          ]
        ),
        bottomNavigationBar: BottomAppBar(
          child: Container(
            height: 70,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  Icon(Icons.call),
                  Icon(Icons.message),
                  Icon(Icons.contact_page)
                ],
              ),
            )
        ),
      )
    );
  }
}

class ContactList extends StatelessWidget {
  const ContactList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Row(
        children: [
          Icon(Icons.account_circle, size: 50,),
          Text("data", style: TextStyle(
            fontSize: 30
          ),)
        ],
      )
    );
  }
}
