import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool status = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FlutterSwitch(
          value: status,
          onToggle: (val) {
            setState(() {
              status = val;
            });
          },
          
          height: 40,
          width: 70,
          activeColor: Colors.amber,
          inactiveColor: Colors.red,
          borderRadius: 50,
          activeText: 'asdfsd',
          activeTextColor: Colors.black,
          inactiveText: 'dfsdfsdf',
          inactiveTextColor: Colors.black,
          ),
    );
  }
}
