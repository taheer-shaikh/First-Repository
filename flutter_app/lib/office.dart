import 'package:flutter/material.dart';
import 'Ui.dart';

class Work extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Office"),
      ),
      backgroundColor: Colors.grey.shade300,
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home_rounded),label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.work),label: "Office"),
        ],
        onTap: (int i){
          if(i==0)
          {
            Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginForm()));
          }
          else if(i==1)
          {
            Navigator.push(context, MaterialPageRoute(builder: (context)=>Work()));
          }
        },
      ),
    );
  }
}
