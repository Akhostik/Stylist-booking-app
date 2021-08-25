import 'package:flutter/material.dart';




Widget gridItem(String img, catName){
  return Column(
    children: [
      ClipRRect(
        borderRadius: BorderRadius.circular(80),
        child: Container(
          height: 70,
          width: 70,
        
          child: Image.asset(img),
        ),
      ),
        SizedBox(height: 5,),
        Text('$catName')
    ],
  );
}