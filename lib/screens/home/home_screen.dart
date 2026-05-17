import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
          leading: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Image.asset('assets/icons/logo.png'),
          ),
        title: Text('E-Commerce Platform'),
        actions: [
           Padding(
             padding: const EdgeInsets.only(right: 15),
             child: Badge(
               label: Text('11'),
               child: Icon(CupertinoIcons.bell, size: 26),
             ),
           )
        ],

      ),

      body: ListView(
        children: [
          Container(
            margin: EdgeInsets.all(15),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10)
            ),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Search',
                prefixIcon: Icon(CupertinoIcons.search),
                suffixIcon: Icon(Icons.filter_list),
                contentPadding: EdgeInsets.all(15),
                border: InputBorder.none
              ),
            ),
          )
        ],
      ),

    );
  }
}
