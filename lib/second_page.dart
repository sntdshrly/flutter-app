import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class SecondPage extends StatelessWidget {
  final List<String> projectUrls = [
    "https://drive.google.com/file/d/1UKw5ZRJUgc39psLCdx5NcHgjyM7zd5O8/view",
    "https://drive.google.com/file/d/1UKw5ZRJUgc39psLCdx5NcHgjyM7zd5O8/view",
    "https://drive.google.com/file/d/1UKw5ZRJUgc39psLCdx5NcHgjyM7zd5O8/view",
    "https://drive.google.com/file/d/1UKw5ZRJUgc39psLCdx5NcHgjyM7zd5O8/view",
    "https://drive.google.com/file/d/1UKw5ZRJUgc39psLCdx5NcHgjyM7zd5O8/view",
    "https://drive.google.com/file/d/1UKw5ZRJUgc39psLCdx5NcHgjyM7zd5O8/view",
    "https://drive.google.com/file/d/1UKw5ZRJUgc39psLCdx5NcHgjyM7zd5O8/view",
    "https://drive.google.com/file/d/1UKw5ZRJUgc39psLCdx5NcHgjyM7zd5O8/view",
    "https://drive.google.com/file/d/1UKw5ZRJUgc39psLCdx5NcHgjyM7zd5O8/view",
    "https://drive.google.com/file/d/1UKw5ZRJUgc39psLCdx5NcHgjyM7zd5O8/view",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Page"),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: GridView.count(
          crossAxisCount: 3,
          crossAxisSpacing: 16,
          mainAxisSpacing: 16,
          children: List.generate(
            10, // Number of buttons
            (index) => ElevatedButton(
              child: Text("Project ${index + 1}"),
              onPressed: () {
                _launchURL(projectUrls[index]);
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.blue,
                minimumSize: Size.fromWidth(100),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  void _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}
