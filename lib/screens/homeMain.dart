import 'package:flutter/material.dart';
import 'package:flutter_app5/screens/appointments.dart';
import 'package:flutter_app5/screens/homPage.dart';
import 'package:flutter_app5/screens/offers.dart';
import 'package:flutter_app5/screens/profile.dart';

class HomeMain extends StatefulWidget {

  @override
  _HomeMainState createState() => _HomeMainState();
}

class _HomeMainState extends State<HomeMain> {

  List<Widget> pages =[
    HomePage(),
    Appointments(),
    Offers(),
    Profile()
  ];
  int selectedIndex = 0;
  List <IconData> data =[
    Icons.home_filled,
    Icons.calendar_today_outlined,
    Icons.card_giftcard,
    Icons.person    

  ];
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      
      bottomNavigationBar:
      
       Padding(
        
        padding: const EdgeInsets.all(20.0),
        child: Material(
          elevation: 10,
          borderRadius: BorderRadius.circular(20),
          color: Colors.indigo,
          child: Container(
            height: 70,
            width: double.infinity,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: data.length,
              padding: EdgeInsets.symmetric(horizontal:10),
              itemBuilder: (context, index){
                return Padding(
                  padding: EdgeInsets.symmetric(horizontal:18)
                ,child: GestureDetector(
                  onTap: (){
                    setState(() {
                      selectedIndex =index;
                    });
                    
                  },
                  child: AnimatedContainer(
                    duration: Duration(milliseconds: 250),
                    width: 35,
                    decoration: BoxDecoration(
                      border: index ==selectedIndex ?Border(top: BorderSide(width: 3.0, color: Colors.white)): null,
                      gradient: index == selectedIndex ?LinearGradient(
                        colors: [
                          Colors.grey.shade800,
                          Colors.black
                        ],
                        begin:  Alignment.topCenter,
                        end: Alignment.bottomCenter)
                    : null,
                      ),

                      child: Icon(data[index], 
                      color: index==selectedIndex? Colors.white: Colors.grey.shade800,
                      size:35
                      ) ,
                    ),
                  ),
                );
            
              }
           
              )
          ),
          ),
      ),
      body: pages.elementAt(selectedIndex)
      
      );
  
  }
}