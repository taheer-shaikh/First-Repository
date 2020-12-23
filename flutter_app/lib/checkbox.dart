import 'package:flutter/material.dart';

class Basic extends StatefulWidget {
  @override
  _BasicState createState() => _BasicState();
}

class _BasicState extends State<Basic> {

  bool checkboxiconvalue = false;
  bool checkboxmsgvalue = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Basic Ui"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [

          ListTile(
            onTap: (){
              setState(() {
                checkboxiconvalue = !checkboxiconvalue;
                print(checkboxiconvalue);
              });
            },
            leading: Checkbox(
                value: checkboxiconvalue,
                onChanged: (value){
                  setState(() {
                    this.checkboxiconvalue = value;
                  });
                }),
            title: Text("Show Icon"),
          ),


          ListTile(
            onTap: (){
              setState(() {
                checkboxmsgvalue = !checkboxmsgvalue;
                print(checkboxmsgvalue);
              });
            },
            leading: Checkbox(
                value: checkboxmsgvalue,
                onChanged: (value){
                  setState(() {
                    this.checkboxmsgvalue = value;
                  });
                }),
            title: Text("Show Message"),
          ),
          SizedBox(width: 100,),
          getIcon(check: checkboxiconvalue),
          getMessage(check: checkboxmsgvalue)
        ],
      ),
    );
  }

  Widget getIcon({bool check}){
    if(check==true)
      {
          return Icon(Icons.message,size: 250);
      }if(check == false)
      {
          return Text("");
      }
  }

  Widget getMessage({bool check}){
    if(check==true)
      {
        return Text("Icon Data",
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold
        ),);
      }
    if(check==false)
      {
        return Text("");
      }
  }
}