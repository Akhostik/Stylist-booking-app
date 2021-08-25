import 'package:flutter/material.dart';
import 'package:flutter_app5/widgets/availableSlot.dart';
import 'package:flutter_app5/widgets/special.dart';

class Appointments extends StatefulWidget {
  @override
  _AppointmentsState createState() => _AppointmentsState();
}

class _AppointmentsState extends State<Appointments> {

  var finaldate;

    void callDatePicker() async {
      var order = await getDate();
      setState(() {
        finaldate = order;
      });
    }

    Future<DateTime> getDate() {
      // Imagine that this function is
      // more complex and slow.
      return showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(2018),
        lastDate: DateTime(2030),
        builder: (BuildContext context, Widget child) {
          return Theme(
            data: ThemeData.light(),
            child: child,
          );
        },
      );
    }

  List<String> specImg=[
    'assets/specialist1.jpg',
    'assets/specialist3.jpg',
    'assets/specialist3.jpg',
    'assets/specialist4.jpg',
    'assets/specialist5.jpg'
  ];

bool isActive =false;
Color chipCol =Colors.grey;
Color active = Colors.indigo;

void chipTap(){
  
  setState(() {
    isActive =true;
    chipCol =active;
    

  });
  
}
  List<String> specName=[
    'John Jones',
    'Ada Eze',
    'Usman Khalid',
    'Meagan Logan',
    'Style Plus'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
              child: Column(
              
          children: [
            Container(
              height: 200,
              padding: EdgeInsets.only(top:50),
              color: Colors.indigo,
              child: Column(
                children: [
                  Row(
                    children:[
                      Icon(Icons.keyboard_arrow_left),
                      SizedBox(width:15),
                      Text('Select Date & Time', style: TextStyle(color: Colors.white, fontSize: 20,fontWeight: FontWeight.bold)),
                       SizedBox(width:15,),

                    
                       

                    ]
                  ),
                  SizedBox(height: 30,),
                   Container(
                decoration: BoxDecoration(color: Colors.grey[200]),
                padding: EdgeInsets.symmetric(horizontal: 30.0),
                child: finaldate == null
                    ? Text(
                        "Use the button to Select a Date",
                        textScaleFactor: 1.3,
                      )
                    : Text(
                        "$finaldate",
                        textScaleFactor: 1.0,
                      ),
              ),
              new RaisedButton(
                onPressed: callDatePicker,
                color: Colors.orangeAccent,
                child:
                    new Text('Click here', style: TextStyle(color: Colors.white)),
              ),
                ],
              ),
            ),
             SizedBox(height:40,),
             Positioned( child: Text('Available Slot', style: TextStyle( fontWeight: FontWeight.bold))),
              SizedBox(height:10,),
            availableSlot(chipTap, chipCol),
             SizedBox(height:10,),
            Text('Choose Hair Specialist ', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),

            Container(
              height: 150,
              width: 300,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: specImg.length,
                itemBuilder: (context,index){
                  return specialCard(specImg[index], '${specName[index]}');
                },
              ),
            ),
  SizedBox(height:10,),
  Container(
    width: 300,
    child: RaisedButton(
      onPressed: (){

      },
      color: Colors.orangeAccent,
      child: Text('Book Appointment', style: TextStyle(color: Colors.white))
    ),
  )
          ],
        ),
      ),
    );
  }
}