import 'package:e_commerce_app_ui/screens/home/widgets/item_banner.dart';
import 'package:e_commerce_app_ui/screens/home/widgets/item_category.dart';
import 'package:e_commerce_app_ui/screens/home/widgets/item_product.dart';
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
                hintStyle: TextStyle(fontWeight: FontWeight.w300),
                prefixIcon: Icon(CupertinoIcons.search),
                prefixIconColor: Colors.grey,
                suffixIcon: Icon(Icons.filter_list),
                suffixIconColor: Colors.grey,
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
                AnimatedContainer(
                  duration: Duration(milliseconds: 300),
                  height: currentIndex == index? 12: 8, width: currentIndex == index? 12: 8,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: currentIndex == index? Colors.grey: Colors.grey.shade400,
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
          ),

          // Categories.
          ListTile(
            title: Text('Categories'),
            trailing: Text('SHOW All', style: TextStyle(color: Colors.indigo)),
          ),
          SizedBox(
            height: 100,
            child: ListView(
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.all(5),
              children: [
                ItemCategory(title: 'Baby', image: 'baby.png', color: Colors.orange),
                ItemCategory(title: 'automobile', image: 'automobile.png', color: Colors.blue),
                ItemCategory(title: 'device', image: 'device.png', color: Colors.indigo),
                ItemCategory(title: 'sports', image: 'sports.png', color: Colors.green),
                ItemCategory(title: 'kitchen', image: 'kitchen.png', color: Colors.blueAccent),
                ItemCategory(title: 'medical', image: 'medical.png', color: Colors.brown),
                ItemCategory(title: 'Baby', image: 'baby.png', color: Colors.orange),
                ItemCategory(title: 'automobile', image: 'automobile.png', color: Colors.blue),
                ItemCategory(title: 'device', image: 'device.png', color: Colors.indigo),
                ItemCategory(title: 'sports', image: 'sports.png', color: Colors.green),
                ItemCategory(title: 'kitchen', image: 'kitchen.png', color: Colors.blueAccent),
                ItemCategory(title: 'medical', image: 'medical.png', color: Colors.brown),

              ],
            ),
          ),

          // Products
          ListTile(
            title: Text('Products'),
            trailing: Text('SHOW All', style: TextStyle(color: Colors.indigo)),
          ),
          GridView.count(
              crossAxisCount: 2,
            padding: EdgeInsets.symmetric(horizontal: 15),
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            children: [

              ItemProduct(title: 'Medical instruments combo. Three in one combo.',
                  image: 'product1.jpeg',
                  price: '15,000'
              ),
              ItemProduct(title: 'Medical syringe. Buy one and get one for free.',
                  image: 'product2.jpeg',
                  price: '50'
              ),
              ItemProduct(title: 'Tablet and Capsule. Made in Bangladesh.',
                  image: 'product3.jpeg',
                  price: '330'
              ),
              ItemProduct(title: 'Capsules made in Bangladesh for vitamin.',
                  image: 'product4.jpeg',
                  price: '185'
              ),
              ItemProduct(title: 'Digital Thermometer for capturing the temperature of body.',
                  image: 'product5.jpeg',
                  price: '1500'
              ),
              ItemProduct(title: 'Digital screens for ICU and CCU. Made in Japan.',
                  image: 'product6.jpeg',
                  price: '86,000'
              ),
              ItemProduct(title: 'Medical instruments combo. Three in one combo.',
                  image: 'product1.jpeg',
                  price: '15,000'
              ),
              ItemProduct(title: 'Medical syringe. Buy one and get one for free.',
                  image: 'product2.jpeg',
                  price: '50'
              ),
              ItemProduct(title: 'Tablet and Capsule. Made in Bangladesh.',
                  image: 'product3.jpeg',
                  price: '330'
              ),
              ItemProduct(title: 'Capsules made in Bangladesh for vitamin.',
                  image: 'product4.jpeg',
                  price: '185'
              ),
              ItemProduct(title: 'Digital Thermometer for capturing the temperature of body.',
                  image: 'product5.jpeg',
                  price: '1500'
              ),
              ItemProduct(title: 'Digital screens for ICU and CCU. Made in Japan.',
                  image: 'product6.jpeg',
                  price: '86,000'
              ),


            ],
          ),


        ],
      ),

    );
  }
}
