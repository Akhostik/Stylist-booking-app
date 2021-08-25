import 'package:flutter/material.dart';



Widget availableSlot(Function tap, Color col){

  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      Column(
        children: [
          GestureDetector(  onTap:  tap, child: Chip( backgroundColor: col, label: Text('10:00AM')) ),
          GestureDetector( child: Chip(label: Text('11:30AM'))),
          GestureDetector(child: Chip(label: Text('1:00PM'))),
          GestureDetector(child: Chip(label: Text('5:30PM'))),
        ],
      ),
      Column(
        children: [
          GestureDetector(child: Chip(label: Text('10:30AM'))),
          GestureDetector(child: Chip(label: Text('12:30PM'))),
          GestureDetector(child: Chip(label: Text('4:00PM'))),
          GestureDetector(child: Chip(label: Text('6:30PM'))),
        ],
      ),
      Column(
        children: [
          GestureDetector(child: Chip(label: Text('11:00AM'))),
          GestureDetector(child: Chip(label: Text('12:30AM'))),
          GestureDetector(child: Chip(label: Text('5:00PM'))),
          GestureDetector(child: Chip(label: Text('5:30PM'))),
        ],
      ),
    ],
  );
}