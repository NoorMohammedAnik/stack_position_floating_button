import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        floatingActionButton: FloatingActionButton( //take fab button out side of body otherwise its scroll
          onPressed: (){},
          child: Icon(Icons.add),
        ),
        body: Center(
          child: Stack(
            alignment: Alignment.bottomCenter,
            overflow: Overflow.visible,
            children: <Widget>[
              Container(
                height: 200, //we can take this size via media query
                width: 200,
                color: Colors.blue,

              ),
              Positioned(
                bottom: -50,
                child: CircleAvatar(
                  radius: 50,
                  backgroundColor: Colors.amber,
                ),
              )

            ],
          ),
        ),
      ),
    );
  }
}
