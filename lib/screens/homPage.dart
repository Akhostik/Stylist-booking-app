import 'package:flutter/material.dart';
import 'package:flutter_app5/screens/homeMain.dart';
import 'package:flutter_app5/widgets/fashionList.dart';
import 'package:flutter_app5/widgets/gridItem.dart';
import 'package:flutter_app5/widgets/specialist.dart';

import 'package:flutter/src/rendering/box.dart';


class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> fashionImages = [
    'assets/fashion1.png',
    'assets/fashion2.jpg',
    'assets/fashion3.jpg',
    'assets/fashion4.jpg'
  ];

  List<String> gridImages = [
    'assets/scissors.png',
    'assets/nailpainting.jpg',
    'assets/stylist1.jpg',
    'assets/hairdrier.png',
    'assets/hairspa.jpg',
    'assets/shampoo.jpg'
        'assets/shaving.jpg'
  ];

  List<String> stylists = [
    'assets/stylist1.jpg',
    'assets/stylist2.jpg',
    'assets/stylist3.jpg',
    'assets/stylist4.jpg',
    'assets/stylist5.jpg',
    'assets/stylist6.png',
  ];

  List<String> stylistName =[
    'Ann Donald',
    'Cynthia Morgan',
    'Jamie Trevor',
    'Meagan Taylor',
    'Lee Cheng',
    'Amaka Eze'
  ];

  List<String> gridItemNames = [
    'HairCut',
    'Coloring',
    'Styling',
    'Hair Drier',
    'Hair spa',
    'Shampoo',
    'Shaving'
  ];

List<int> stylistNo =[
  0020012,
  1249123,
  0809239,
  5539230,
  9982482,
  0092349
];
  List<String> title = [
    'Look Awesome today!',
    'Meet the best',
    'Ride in style',
    'Rule your Looks'
  ];

  List<String> chips = ['Get 50% discount!', 'Chat with bosses', 'Enter rooms', 'Concur with vibe'];
  List<Color> colors = [
    Colors.indigo,
    Colors.orangeAccent,
    Colors.lightBlue,
    Colors.purple
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(left: 15, top: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                   SizedBox(height:20),
                  Text(
                    'Hey Sandra!',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                  ),
                  Text('Welcome to Hair Salon!',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 25)),
                    SizedBox(height:10),
                  Container(
                    height: 100,
                    width: double.infinity,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: fashionImages.length,
                        itemBuilder: (context, index) {
                          return fashionCard(colors[index], '${title[index]}',
                              '${chips[index]}', fashionImages[index]);
                        }),
                  )
                ],
              ),
            ),
            SizedBox(height:20),
            // THE  GRID CATEGORY ITEMS
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              gridItem(gridImages[0], gridItemNames[0]),
              gridItem(gridImages[1], gridItemNames[1]),
              gridItem(gridImages[2], gridItemNames[2]),
               gridItem(gridImages[3], gridItemNames[3]),

            ],
          ),
          SizedBox(height:30),
            Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              gridItem(gridImages[4], gridItemNames[4]),
               gridItem(gridImages[3], gridItemNames[5]),
               gridItem(stylists[2], gridItemNames[6]),
                gridItem(stylists[4], gridItemNames[4]),

              
           
             
               
            ],
          ),
         
           
          // Container(
          //   child: GridView.builder(
          //     gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          //         maxCrossAxisExtent: 10,
          //         childAspectRatio: 3 / 2,
          //         crossAxisSpacing: 20,
          //         mainAxisSpacing: 20),
          //     itemCount: gridImages.length,
          //     itemBuilder: (BuildContext ctx, index) {
          //       return gridItem(gridImages[index], Text('${gridItemNames[index]}'));
          //     }),
          // ),
            //HAIR SPECIALIST SECTION
            SizedBox(height: 30),
            Container(
              margin: EdgeInsets.only(left: 10, right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Hair Specialist',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      )),
                  Row(
                    children: [
                      Text('View More'),
                      Icon(Icons.keyboard_arrow_right)
                    ],
                  )
                ],
              ),
            ),
          SizedBox(height:10),
            //THE SPECIALISTS ITEMS
            Container(
              height: 200,
              width: double.infinity,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: stylists.length,
                itemBuilder: (context,index){
                  return specialistItem(stylists[index], '${stylistName[index]}', stylistNo[index]);
                },
                ),
            )
          ],
        ),
      ),
    );
  }
}
