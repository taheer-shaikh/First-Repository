import 'package:flutter/material.dart';
import 'package:flutter_app/office.dart';

class LoginForm extends StatefulWidget {
  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {

  TextEditingController namecontroller = TextEditingController();
  TextEditingController passcontroller = TextEditingController();
  final FormKey = GlobalKey<FormState>();
  String name;
  int currentindex = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    name="";
  }

  clear(){
    passcontroller.clear();
    namecontroller.clear();
    setState(() {
      name = "";
    });
  }

  validate(){
    if(FormKey.currentState.validate())
      {
        FormKey.currentState.save();
        setState(() {
          name = name;
        });
        print("$name");
      }
  }
  @override
  Widget build(BuildContext context) {

    final tabs = [
      Center(
        child: Container(
          child: Column(
            children: [
              Image.asset("images/face.png",
                width: 150,
                height: 150,
                color: Colors.orangeAccent,
              ),

              Form(
                key: FormKey,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextFormField(
                          controller: namecontroller,
                          decoration: InputDecoration(
                              labelText: "Name",),
                          validator: (val) => val.length == 0 ? "Enter Name" : null,
                          onSaved: (val) => name = val,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextFormField(
                          controller: passcontroller,
                          decoration: InputDecoration(labelText: "Password"),
                          validator: (val) => val.length == 0 ? "Enter Password" : null,
                        ),
                      ),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          FlatButton(onPressed: (){
                            validate();
                          },child: Text("Submit"),
                          color: Colors.white,),
                          FlatButton(onPressed: (){
                            clear();
                          },child: Text("Clear"),
                              color: Colors.white),
                        ],
                      ),

                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("${name.isEmpty || name == null ? "Nothing Submitted Yet..!!" : name}"),
                      ),
                    ],
                  )
              )
            ],
          ),
        ),
      ),
      Center(
        child: Text("Tahir"),
      )
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text("Login"),
        actions: [
          IconButton(icon: Icon(Icons.clear), onPressed: (){
            clear();
          })
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentindex,
        type: BottomNavigationBarType.shifting,
        selectedFontSize: 20,
        iconSize: 25,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home_rounded),
              label: "Home",
          backgroundColor: Colors.orange),
          BottomNavigationBarItem(icon: Icon(Icons.work),
              label: "Office",
          backgroundColor: Colors.deepPurple),
        ],
        onTap: (int i){
          setState(() {
            currentindex = i;
          });
        },
      ),
      backgroundColor: Colors.blueGrey.shade300,
      body: tabs[currentindex],
    );
  }
}

