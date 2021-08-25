import 'package:flutter/material.dart';




Widget fashionCard(Color color, String title, chip, img){

return Container(
  
  width: 300,
  child: Card(
    elevation: 10,
    color: color,
    child: Container(
      
      padding: EdgeInsets.fromLTRB(0,10,0,10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('$title', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 15),),
              SizedBox(height:5),

              Chip(
                label: Text('$chip'),
              )
            ],
          ),
          Column(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                              child: Container(
                  height: 40,
                  width: 40,
                  child: Image.asset(img),
                ),
              )
            ],
          )
        ],
      ),
    ),
  ),
);
}