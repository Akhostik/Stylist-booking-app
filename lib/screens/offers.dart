import 'package:flutter/material.dart';



class Offers extends StatefulWidget {
  @override
  _OffersState createState() => _OffersState();
}

class _OffersState extends State<Offers> {
  @override
  Widget build(BuildContext context) {
    return Container(
       child: Column(
         mainAxisAlignment: MainAxisAlignment.center,
         children: [
           Center(
             child: CircleAvatar(
               backgroundColor: Colors.white,
               radius: 100,
               child: Icon(Icons.warning, color: Colors.orangeAccent,size: 100,),

             ),
           ),
           SizedBox(height:20),
           Text('Coming Soon...', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold))
         ]
       ),
       
    );
  }
}