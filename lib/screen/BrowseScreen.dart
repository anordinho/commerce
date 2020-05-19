import 'package:commerce/cards/BrowseCards.dart';
import 'package:commerce/model/BrowseModel.dart';
import 'package:commerce/pages/ProductPage.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BrowseScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(FontAwesomeIcons.bars),
        title: Center(child: Text('BROWSE',style: TextStyle(color: Colors.white
        ))),
        actions: <Widget>[
          Icon(FontAwesomeIcons.search),

        ],
        bottom: PreferredSize(
          child: Row( mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                       RaisedButton( 
                         color: Colors.redAccent,
                         shape: Border(),
                        child: Text('ALL', style: TextStyle(fontSize: 15)),
                         onPressed: () {

                       }),
                      RaisedButton( 
                        child: Text('TRENDING', style: TextStyle(fontSize: 15)),
                         onPressed: () {

                       }),
                       RaisedButton( 
                        child: Text('NEW', style: TextStyle(fontSize: 15)),
                         onPressed: () {

                       }),
                    ],
          ),
           preferredSize: Size(0, 40)),
      ),
     body: CustomScrollView(
       slivers: <Widget>[
         SliverToBoxAdapter(
           child: Container(
             height: 500,
             child: ListView.builder(
               itemCount: browses.length,
               itemBuilder: (BuildContext context, int index) {
               return InkWell(
                 onTap: (){
               Navigator.push(
                 context,
           MaterialPageRoute(builder: (context) => ProductPage( browses: browses[index],)),
  );
             },
                 child: BrowseCard(browses: browses[index],));
               
             }),
           ),
         )
        ],
     ),
    
    );
  }
}