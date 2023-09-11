import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Title(color: Colors.white, child: Text("Home")),
        ),
        body: Column(
          children: [
            Expanded(child: 
            Stack(
              children: [
                Image.asset("images\facebookStory.jpg"),
              ],
            )
            ),
          ],
          
        ),
      ),
    );
  }
}
