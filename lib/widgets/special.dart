import 'package:flutter/material.dart';


Widget specialCard(String img, specName){
  return Container(
    width: 150,
    child: Card(
      child: Column(
        
        children:[
          SizedBox(height:15),
          CircleAvatar(
            radius: 40,
            backgroundImage: AssetImage(img),

          ),
          SizedBox(height:10),
          Text('$specName', style: TextStyle(fontWeight: FontWeight.bold),)
        ]
      ),
    ),
  );
}