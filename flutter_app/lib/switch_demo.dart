import 'package:flutter/material.dart';
import 'package:lite_rolling_switch/lite_rolling_switch.dart';

class SwitchDemo extends StatefulWidget {
  @override
  _SwitchDemoState createState() => _SwitchDemoState();
}

class _SwitchDemoState extends State<SwitchDemo> {

  bool state = false;


  ThemeData _darkTheme = ThemeData(
      brightness: Brightness.dark,
  primaryColor: Color(0xFFC41A3B),
  accentColor: Color(0xFF1B1F32));


  ThemeData _lightTheme = ThemeData(brightness: Brightness.light,
  primaryColor: Color(0xFFFBE0E6),
  accentColor: Color(0xFF1B1F32));


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: state ? _darkTheme : _lightTheme,
      home:Scaffold(
        appBar: AppBar(
          title: Text("Switch Demo"),
        ),
        body: Column(
          children: [

            Container(
              child: SwitchListTile(
                value: state,
                onChanged: (bool s){
                  setState(() {
                    this.state = s;
                    print("Value is $s");
                  });
                },
                title: Text("Dark Mode"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
