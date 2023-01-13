import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class DashBoard extends StatefulWidget {
  const DashBoard({super.key});

  @override
  State<DashBoard> createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  List<CardItem> items = [
    CardItem(
        image: ('images/speaker.png'),
        title: "Speaker",
        subtitle: "100+ products"),
    CardItem(
        image: ('images/head.png'),
        title: "Headphones",
        subtitle: "15+ products"),
    CardItem(
        image: ('images/speaker.png'),
        title: "Speaker",
        subtitle: "100+ products"),
    CardItem(
        image: ('images/speaker.png'),
        title: "Speaker",
        subtitle: "100+ products"),
    CardItem(
        image: ('images/speaker.png'),
        title: "Speaker",
        subtitle: "100+ products"),
    CardItem(
        image: ('images/speaker.png'),
        title: "Speaker",
        subtitle: "100+ products"),
    CardItem(
        image: ('images/speaker.png'),
        title: "Speaker",
        subtitle: "100+ products"),
    CardItem(
        image: ('images/speaker.png'),
        title: "Speaker",
        subtitle: "100+ products"),
    CardItem(
        image: ('images/speaker.png'),
        title: "Speaker",
        subtitle: "100+ products"),
    CardItem(
        image: ('images/speaker.png'),
        title: "Speaker",
        subtitle: "100+ products"),
  ];
  List<CardItem> recommendedlist = [
    CardItem(image: ('images/mic.png'), title: "Beosound", subtitle: "500"),
    CardItem(image: ('images/sound.png'), title: "Beolit", subtitle: "800"),
    CardItem(image: ('images/mic.png'), title: "Beosound", subtitle: "500"),
    CardItem(image: ('images/mic.png'), title: "Beosound", subtitle: "500"),
    CardItem(image: ('images/mic.png'), title: "Beosound", subtitle: "500"),
    CardItem(image: ('images/mic.png'), title: "Beosound", subtitle: "500"),
    CardItem(image: ('images/mic.png'), title: "Beosound", subtitle: "500"),
    CardItem(image: ('images/mic.png'), title: "Beosound", subtitle: "500"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: Drawer(),
      body: 
    
          
      
      Container(
        child: ListView(
          children: [
            Container(
              padding: EdgeInsets.only(top: 30.0),
              alignment: Alignment.topCenter,
              child: Text("Browse by Categories"),
            ),
            Container(
                padding: EdgeInsets.only(top: 20.0),
                height: 210,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemCount: items.length,
                  itemBuilder: ((context, index) => buildCard(items[index])),
                  separatorBuilder: (context, _) => SizedBox(
                    width: 12,
                  ),
                )),
            Container(
              padding: EdgeInsets.only(top: 40.0),
              alignment: Alignment.topCenter,
              child: Text("Recommended for You"),
            ),
            Container(
              padding: EdgeInsets.only(top: 20.0),
              height: 210,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemCount: recommendedlist.length,
                itemBuilder: ((context, index) =>
                    buildCard2(recommendedlist[index])),
                separatorBuilder: (context, _) => SizedBox(
                  width: 12,
                ),
              ),
            ),
             BottomNavigationBar(
            items : [
              BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home",
              backgroundColor: Colors.black,
              ),
              BottomNavigationBarItem(icon: Icon(Icons.search),label: "Search", backgroundColor: Colors.black,),
              BottomNavigationBarItem(icon: Icon(Icons.notifications),label: "Notifications"),
              BottomNavigationBarItem(icon: Icon(Icons.people),label: "Profile"),
            ],
          ),
            
           
        
          ],
        ),
     
      ),
      
        
    );
     
  }

  buildCard(CardItem item) => Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(100.0),
                topRight: Radius.circular(10.0),
                bottomLeft: Radius.circular(10.0),
                bottomRight: Radius.circular(10.0)),
            color: Colors.grey),
        width: 180,
        child: Column(children: [
          Expanded(
            child: Image.asset(
              item.image,
              fit: BoxFit.cover,
            ),
          ),
          Text(item.title),
          Text(item.subtitle),
        ]),
      );

  buildCard2(CardItem item) => Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(20.0)),
            color: Colors.grey),
        width: 150,
        child: Column(children: [
          Expanded(
            child: Image.asset(
              item.image,
              fit: BoxFit.cover,
            ),
          ),
          Text(item.title),
          Text(item.subtitle),
        ]),
        
      );
         
}


class CardItem {
  final String image;
  final String title;
  final String subtitle;
  const CardItem(
      {required this.image, required this.title, required this.subtitle});
}
