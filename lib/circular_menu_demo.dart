
import 'package:circular_menu/circular_menu.dart';
import 'package:flutter/material.dart';

class CircularMenuDemo extends StatefulWidget {
  @override
  _CircularMenuDemoState createState() => _CircularMenuDemoState();
}

class _CircularMenuDemoState extends State<CircularMenuDemo> {
  String _colorName ;
  Color _color ;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.grey[100],
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.cyan[200],
          title: Text('Flutter Animated Circular Menu Demo'),
        ),
        body: CircularMenu(
          alignment: Alignment.center,
          backgroundWidget: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Center(
                child: Padding(
                  padding: const EdgeInsets.all(100.0),
                  child: RichText(
                    text: TextSpan(
                      style: TextStyle(color: Colors.black, fontSize: 20,fontWeight: FontWeight.bold),
                      children: <TextSpan>[
                        TextSpan(text: 'Press the menu button'),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          curve: Curves.bounceOut,
          reverseCurve: Curves.bounceInOut,
          toggleButtonColor: Colors.cyan[400],
          items: [
            CircularMenuItem(
                icon: Icons.home,
                color: Colors.brown,
                onTap: () {
                  setState(() {
                    _color = Colors.brown;
                    _colorName = 'Brown';
                  });
                }),
            CircularMenuItem(
                icon: Icons.search,
                color: Colors.green,
                onTap: () {
                  setState(() {
                    _color = Colors.green;
                    _colorName = 'Green';
                  });
                }),
            CircularMenuItem(
                icon: Icons.settings,
                color: Colors.red,
                onTap: () {
                  setState(() {
                    _color = Colors.red;
                    _colorName = 'red';
                  });
                }),
            CircularMenuItem(
                icon: Icons.chat,
                color: Colors.orange,
                onTap: () {
                  setState(() {
                    _color = Colors.orange;
                    _colorName = 'orange';
                  });
                }),
            CircularMenuItem(
                icon: Icons.notifications,
                color: Colors.purple,
                onTap: () {
                  setState(() {
                    _color = Colors.purple;
                    _colorName = 'purple';
                  });
                })
          ],
        ),
      ),
    );
  }
}
