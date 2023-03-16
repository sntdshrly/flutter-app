import 'package:flutter/material.dart';
import 'package:flutter_app/second_page.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Main Page"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(16, 0, 16, 16),
            child: Image.asset(
              "assets/img/logo-ukm.png",
              height: 200,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          ElevatedButton(
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 32),
              child: Text(
                "Go to Second Page",
                style: TextStyle(fontSize: 18),
              ),
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SecondPage()),
              );
            },
            style: ElevatedButton.styleFrom(
              primary: Colors.blue,
              onPrimary: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(32),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
