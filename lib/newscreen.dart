import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NewScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Stack(
          children: [
            Container(
              width: 250,
              height: 250,
              color: Colors.pink,
            ),
            Container(
              width: 150,
              height: 150,
              color: Colors.white,
            ),
            Container(
              width: 50,
              height: 50,
              color: Colors.blue,
            )
          ],
        ),
      ),
    );
  }
}
