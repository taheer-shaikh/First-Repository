import 'package:flutter/material.dart';

class PickerDemo extends StatefulWidget {
  @override
  _PickerDemoState createState() => _PickerDemoState();
}

class _PickerDemoState extends State<PickerDemo> {

  DateTime _dateTime;
  DateTime _todays;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _todays = DateTime.now();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Picker Demo"),
        backgroundColor: Colors.purple,
      ),
      backgroundColor: Colors.purple.shade100,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Today's Date ${_todays.day}/${_todays.month}/${_todays.year}",style: TextStyle(
                fontSize: 25,
              color: Colors.purple.shade500
            ),),
            SizedBox(height: 50,),
            Text(_dateTime == null ? "Nothing is Selected" : ("Your Birthdate ${_dateTime.day}/${_dateTime.month}/${_dateTime.year}"),style: TextStyle(
              fontSize: 25,
              color: Colors.purple.shade500
            ),),
            SizedBox(height: 35,),
            FlatButton(
              color: Colors.purple.shade200,
                onPressed: (){
                  showDatePicker(context: context,
                      initialDate: DateTime.now(),
                      firstDate: DateTime(1950),
                      lastDate:DateTime(2050)).then((date){
                        setState(() {
                          _dateTime = date;
                        });
                  });
                },
                child:Text("Select Birth DatePicker")),
            SizedBox(height: 30,),
            age(selecteddate: _dateTime)
          ],
        ),
      ),
    );
  }
  Widget age({DateTime selecteddate}){
    if(selecteddate == null)
      {
        return Text("");
      }
    if(selecteddate != null) {
      return Text(/*"${selecteddate == null ? "Nothing is Selected yet" :*/" Your age is ${(_todays.year)-(_dateTime.year)} Years ",
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 21,
        color: Colors.purpleAccent.shade700
      ),);
    }
  }
}
