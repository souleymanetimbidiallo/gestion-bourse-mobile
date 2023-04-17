import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gestion_bourse/views/page1.dart';

PreferredSizeWidget myAppBar(String title, BuildContext context){
  return AppBar(
    backgroundColor: const Color(0xff764abc),
    title: Text(title),
    actions: <Widget>[
      IconButton(
        icon: const Icon(Icons.notifications),

        onPressed: (){
          //action for search icon button
        },
      ),
      IconButton(
        icon: const Icon(Icons.chat_bubble),
        onPressed: (){
          //action for search icon button
        },
      ),
      IconButton(
        icon: const Icon(Icons.help),
        onPressed: (){
          //action for search icon button
        },
      ),

      IconButton(
        icon: const Icon(Icons.person),
        onPressed: (){
          Navigator.push(context,MaterialPageRoute(builder: (context) => const Page1("Tab 1")));
        },
      ),
    ],
  );

}