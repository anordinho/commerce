import 'package:commerce/model/BrowseModel.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ProductPage extends StatelessWidget {
  final Browse browses;

  const ProductPage({Key key,@required this.browses}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(FontAwesomeIcons.angleLeft,size: 30,),
        title: Center(
          child: Text('Product  Details',style: TextStyle(color: Colors.white),)),
        actions: <Widget>[
          Image.asset('assets/icons/searchbutton.png')
        ],
      ),

      body: SingleChildScrollView(
        child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(   
                    height: 900,
                    decoration: BoxDecoration(
                     borderRadius: BorderRadius.circular(10),
                     boxShadow: [
                       BoxShadow(
                         color: Colors.grey,
                         offset: Offset.zero,
                         spreadRadius: 1
                         )
                     ],
                      color: Colors.white),
                      child: Column(
                        children: <Widget>[
                          Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Image(image: AssetImage('assets/icons/heartitem.png')),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Image(image: AssetImage('assets/icons/favoriteditemenabled.png')),
                              ),

                            ],
                          ),
                          Container(
                            height: 150,
                            child: Image.asset(browses.image) ,
                          ),
                          Row(
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Image.asset('assets/icons/flag.png'),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text('TRENDING',style: TextStyle(color: Colors.redAccent),),
                              )

                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text(browses.type,style: TextStyle(color: Colors.black)),
                                Text("Tshs 4M",style: TextStyle(color: Colors.white60),)
                              ],
                            ),
                          ),
                          Row(
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: Image.asset('assets/icons/hearticon.png'),
                              ),
                              Text('  23 Likes',style: TextStyle(color: Colors.grey)),
                              Padding(
                                padding: const EdgeInsets.only(left: 60),
                                child: Icon(FontAwesomeIcons.comment),
                              ),
                              Text('  23 comments',style: TextStyle(color: Colors.grey)),
                            ],
                          ),
                          SizedBox(height: 20,),
                          RaisedButton(
                            color: Colors.redAccent,
                            textColor: Colors.white,
                            child: Padding(
                              padding: const EdgeInsets.only(left: 100,right: 100,top: 15,bottom: 15),
                              child: Text('ADD TO CART'),
                            ),
                            onPressed: () {

                          }),
                          SizedBox(height: 10),
                          Text('239 PEOPLE LIKE THIS',style: TextStyle(color: Colors.grey),),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Divider(thickness: 1,),
                          ),
                          Row(
                            children: <Widget>[
                              CircleAvatar(
                                radius: 30,
                                backgroundImage: AssetImage(browses.image),
                              )
                            ],
                          )
                        ],
                      ),
                ),
    )
          ,
      ),
    );
  }

}