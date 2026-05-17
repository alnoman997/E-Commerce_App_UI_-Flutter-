import 'package:e_commerce_app_ui/screens/home/widgets/item_banner.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<String> banners = ['banner0.jpg', 'banner1.jpg', 'banner2.jpg', 'banner3.jpg' ];
  int currentIndex = 0;

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
              onPageChanged: (value) {
                setState(() {
                  currentIndex = value;
                });
              },
              children: [

                // this for loop is used for showing 4 banners by one command.
                for (String banner in banners)
                  ItemBanner(image: banner),
/*
               ItemBanner(image: 'banner0.jpg'),
               ItemBanner(image: 'banner1.jpg'),
               ItemBanner(image: 'banner2.jpg'),
               ItemBanner(image: 'banner3.jpg'),
*/
              ],
            ),
          ),

          // Image changing indicator.
          SizedBox(
            height: 30,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              spacing: 10,
              children: [

                // this for loop is used for making 4 indicators for 4 banners by one command.

                // for (String banner in banners)

                for (int index = 0; index < banners.length; index++)
                Container(
                  height: currentIndex == index? 12: 8, width: currentIndex == index? 12: 8,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.grey.shade400,
                  ),
                ),

/*
                Container(
                  height: 15, width: 15,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.grey.shade400,
                  ),
                ),

                Container(
                  height: 15, width: 15,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.grey.shade400,
                  ),
                ),

                Container(
                  height: 15, width: 15,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.grey.shade400,
                  ),
                ),

*/

              ],
            ),
          )

        ],
      ),

    );
  }
}
