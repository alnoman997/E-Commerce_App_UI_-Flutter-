import 'package:e_commerce_app_ui/screens/home/widgets/item_banner.dart';
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


          // we will use card instead of container for building the search bar here.

          // Container(
            // margin: EdgeInsets.all(15),
            // decoration: BoxDecoration(
            //   color: Colors.white,
            //   borderRadius: BorderRadius.circular(10)
            // ),

          // Search Box.

          Card(
            margin: EdgeInsets.all(15),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Search',
                prefixIcon: Icon(CupertinoIcons.search),
                suffixIcon: Icon(Icons.filter_list),
                contentPadding: EdgeInsets.all(15),
                border: InputBorder.none
              ),
            ),
          ),

          // Banners.
          SizedBox(
            height: 150,
            child: PageView(
              children: [

               ItemBanner(image: 'banner0.jpg'),
               ItemBanner(image: 'banner1.jpg'),
               ItemBanner(image: 'banner2.jpg'),
               ItemBanner(image: 'banner3.jpg'),

              ],
            ),
          ),


        ],
      ),

    );
  }
}
