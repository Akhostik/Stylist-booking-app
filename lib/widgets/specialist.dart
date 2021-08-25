import 'package:flutter/material.dart';



Widget specialistItem(String img, name, int phone){
  return Container(
    
    margin: EdgeInsets.only(left:12, right:12),
    width: 100,
    height: 100,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(20),
                  child: Container(
            height: 100,
            child: Image.asset(img)
          ),
        ),
        SizedBox(height: 5,),
        Text('$name'),
        Row(
          children: [
            Icon(Icons.star),
            Icon(Icons.star),
            Icon(Icons.star, color: Colors.grey,),
           
          ],
        ),
        Row(
          children:[
            Icon(Icons.phone),
            Text('$phone')
          ]
        )
      ]
    ),
  );
}