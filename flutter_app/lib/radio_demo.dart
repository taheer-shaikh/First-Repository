import 'package:flutter/material.dart';

class Radio_Demo extends StatefulWidget {
  @override
  _Radio_DemoState createState() => _Radio_DemoState();
}

class _Radio_DemoState extends State<Radio_Demo> {

  Color blubcolor = Colors.black;
  String colorgroupvalue ='';

  double bulbsize = 150;
  String sizegroupvalue = '1';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Radio Demo"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.lightbulb_outline_sharp,
              size: bulbsize,
              color: blubcolor,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Radio(value: "red"
                            , groupValue: colorgroupvalue,
                            onChanged: (val){
                              setState(() {
                                colorgroupvalue = val;
                                blubcolor = Colors.red;
                              });
                            }),
                        Text("Red",
                          style: TextStyle(
                              fontSize: 25,
                              color: Colors.red
                          ),)
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left:8.0),
                          child: Radio(value: "green",
                              groupValue: colorgroupvalue,
                              onChanged: (val){
                                setState(() {
                                  colorgroupvalue = val;
                                  blubcolor = Colors.green;
                                });
                              }),
                        ),
                        Text("Green",
                          style: TextStyle(
                              fontSize: 25,
                              color: Colors.green
                          ),)
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Radio(value: "blue",
                            groupValue: colorgroupvalue,
                            onChanged: (val){
                              setState(() {
                                colorgroupvalue = val;
                                blubcolor = Colors.blue;
                              });
                            }),
                        Text("Blue",
                          style: TextStyle(
                              fontSize: 25,
                              color: Colors.blue
                          ),)
                      ],
                    ),
                  ],
                ),


                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Radio(value: "100"
                            , groupValue: sizegroupvalue,
                            onChanged: (val){
                              setState(() {
                                sizegroupvalue = val;
                                bulbsize = 100;
                              });
                            }),
                        Text("100",
                          style: TextStyle(
                              fontSize: 25,
                              color: Colors.red
                          ),)
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left:8.0),
                          child: Radio(value: "150",
                              groupValue: sizegroupvalue,
                              onChanged: (val){
                                setState(() {
                                  sizegroupvalue = val;
                                  bulbsize = 150;
                                });
                              }),
                        ),
                        Text("150",
                          style: TextStyle(
                              fontSize: 25,
                              color: Colors.green
                          ),)
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Radio(value: "200",
                            groupValue: sizegroupvalue,
                            onChanged: (val){
                              setState(() {
                                sizegroupvalue = val;
                                bulbsize = 200;
                              });
                            }),
                        Text("200",
                          style: TextStyle(
                              fontSize: 25,
                              color: Colors.blue
                          ),)
                      ],
                    ),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
