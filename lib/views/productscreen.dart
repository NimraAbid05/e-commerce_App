import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Product_View extends StatefulWidget {
  const Product_View({super.key});

  @override
  State<Product_View> createState() => _Product_ViewState();
}

class _Product_ViewState extends State<Product_View> {
  List<CardItem> items = [
    CardItem(
      image: ('images/speaker.png'),
      title: "Beosound Balance",
      subtitle: "Innovative wireless home speaker",
    )
  ];

  @override
  Widget build(BuildContext context) {
    // TabController _tabController=TabController(length: 4, vsync:this);
    return Scaffold(
      appBar: AppBar(
      
        title: Text("SPEAKERS" ),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.settings,color: Colors.black,)),
        ],
      ),
      body: 
      Column(children: [
        Container(
            padding: EdgeInsets.only(top: 40.0, left: 30.0),
            height: 300,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemCount: items.length,
              itemBuilder: ((context, index) => buildCard(items[index])),
              separatorBuilder: (context, _) => SizedBox(
                width: 12,
              ),
            )),
            Container(
              
              child: TabBar(
                
                
                tabs: [
                Tab(text: "View all"),
                Tab(text: "Portable"),
                Tab(text: "Multiroom"),
                Tab(text: "Architecture"),

              ]),
              
            ),
            Container(
              
            
            )
      ]),
      
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
        width: 300,
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
