// // import 'package:flutter/cupertino.dart';
// // import 'package:flutter/material.dart';
// // import 'package:projecttask/components/my_current_locations.dart';
// // import 'package:projecttask/components/my_description_box.dart';
// // import 'package:projecttask/components/my_food_tile.dart';
// // import 'package:projecttask/components/my_sliver_app_bar.dart';
// // import 'package:projecttask/components/my_tab_bar.dart';
// // import 'package:projecttask/models/food.dart';
// // import 'package:projecttask/pages/food_page.dart';
// // import 'package:provider/provider.dart';
// //
// // import '../components/my_drawer.dart';
// // import '../models/restaurant.dart';
// //
// // class HomePage extends StatefulWidget {
// //   const HomePage({super.key});
// //
// //   @override
// //   State<HomePage> createState() => _HomePageState();
// // }
// //
// // class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin{
// //
// //   //tab controller
// //   late TabController _tabController;
// //
// //   @override
// //   void initState() {
// //
// //     super.initState();
// //     _tabController = TabController(length: FoodCategory.values.length, vsync: this);
// //   }
// //
// //   @override
// //   void dispose() {
// //   _tabController.dispose();
// //     super.dispose();
// //   }
// //
// //   // sort out and return a list  food items that belong to a  specific category
// //
// //   List<Food>_filterMenuCategory(FoodCategory  category, List<Food> fullMenu){
// //     return fullMenu.where((food) => food.category ==  category).toList();
// //   }
// //
// //   //return list of food in given category
// //
// //   List<Widget> getFoodInThiscategory(List<Food> fullMenu){
// //     return FoodCategory.values.map((category){
// //
// //
// //       //get  category menu
// //       List<Food> categoryMenu = _filterMenuCategory(category, fullMenu);
// //
// //       return ListView.builder(itemCount: categoryMenu.length,
// //           physics: const NeverScrollableScrollPhysics(),
// //           padding: EdgeInsets.zero,
// //           itemBuilder:(context, index){
// //         // get individual food
// //          final food = categoryMenu[index];
// //
// //          // return food title  UI
// //         return MyFoodTile(food: food, onTap: ()
// //         => Navigator.push(context, MaterialPageRoute(builder: (context)=> FoodPage(food: food),
// //         ),
// //         ),
// //         );
// //           }
// //           );
// //     }).toList();
// //   }
// //
// //
// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //
// //
// //       drawer: MyDrawer(),
// //
// //
// //
// //       body: NestedScrollView(
// //           headerSliverBuilder:(context, innerBoxIsScrolled)=>
// //           [
// //             MySliverAppBar(
// //               title:MyTabBar(tabController:_tabController ),
// //               child:Column(
// //                 mainAxisAlignment: MainAxisAlignment.end,
// //                 children: [
// //
// //                   Divider(
// //                     indent: 25,
// //                     endIndent: 25,
// //                     color: Theme.of(context).colorScheme.secondary,
// //                   ),
// //
// //                  // my current location
// //               const  MyCurrentLocations(),
// //
// //
// //                   //description box
// //              const   MyDescriptionBox(),
// //
// //                 ],
// //               ),
// //
// //           ),
// //           ],
// //           body: Consumer<Restaurant>(
// //             builder: (context, restaurant, child) => TabBarView(
// //               controller: _tabController,
// //               children: getFoodInThiscategory(restaurant.menu),
// //
// //             ),
// //           ),
// //
// //
// //
// //
// //       ),
// //
// //     );
// //   }
// // }
// import 'package:flutter/material.dart';
// import 'package:projecttask/components/my_current_locations.dart';
// import 'package:projecttask/components/my_description_box.dart';
// import 'package:projecttask/components/my_food_tile.dart';
// import 'package:projecttask/components/my_sliver_app_bar.dart';
// import 'package:projecttask/components/my_tab_bar.dart';
// import 'package:projecttask/models/food.dart';
// import 'package:projecttask/pages/food_page.dart';
// import 'package:projecttask/pages/cart_page.dart'; // Import your CartPage
// import 'package:provider/provider.dart';
// import '../components/my_drawer.dart';
// import '../models/restaurant.dart';
//
// class HomePage extends StatefulWidget {
//   const HomePage({super.key});
//
//   @override
//   State<HomePage> createState() => _HomePageState();
// }
//
// class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin {
//
//   // Tab controller
//   late TabController _tabController;
//   bool _showOfferAlert = false; // State variable for the offer alert
//
//   @override
//   void initState() {
//     super.initState();
//     _tabController = TabController(length: FoodCategory.values.length, vsync: this);
//
//     // Simulate an event to show the offer alert
//     Future.delayed(Duration(seconds: 1), () {
//       setState(() {
//         _showOfferAlert = true; // Show the alert after 1 second
//       });
//
//       // Set special offer in Restaurant model
//       Provider.of<Restaurant>(context, listen: false).setSpecialOffer(true);
//     });
//   }
//
//   @override
//   void dispose() {
//     _tabController.dispose();
//     super.dispose();
//   }
//
//   // Filter food items based on category
//   List<Food> _filterMenuCategory(FoodCategory category, List<Food> fullMenu) {
//     return fullMenu.where((food) => food.category == category).toList();
//   }
//
//   // Return list of food in the given category
//   List<Widget> getFoodInThisCategory(List<Food> fullMenu) {
//     return FoodCategory.values.map((category) {
//       List<Food> categoryMenu = _filterMenuCategory(category, fullMenu);
//
//       return ListView.builder(
//         itemCount: categoryMenu.length,
//         physics: const NeverScrollableScrollPhysics(),
//         padding: EdgeInsets.zero,
//         itemBuilder: (context, index) {
//           final food = categoryMenu[index];
//           return MyFoodTile(
//             food: food,
//             onTap: () => Navigator.push(
//               context,
//               MaterialPageRoute(
//                 builder: (context) => FoodPage(food: food),
//               ),
//             ),
//           );
//         },
//       );
//     }).toList();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       drawer: MyDrawer(),
//       body: NestedScrollView(
//         headerSliverBuilder: (context, innerBoxIsScrolled) => [
//           MySliverAppBar(
//             title: MyTabBar(tabController: _tabController),
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.end,
//               children: [
//                 Divider(
//                   indent: 25,
//                   endIndent: 25,
//                   color: Theme.of(context).colorScheme.secondary,
//                 ),
//                 const MyCurrentLocations(),
//                 const MyDescriptionBox(),
//               ],
//             ),
//           ),
//         ],
//         body: Consumer<Restaurant>(
//           builder: (context, restaurant, child) => TabBarView(
//             controller: _tabController,
//             children: getFoodInThisCategory(restaurant.menu),
//           ),
//         ),
//       ),
//       // Show an alert dialog if _showOfferAlert is true
//       floatingActionButton: _showOfferAlert
//           ? FloatingActionButton(
//         onPressed: () {
//           showDialog(
//             context: context,
//             builder: (BuildContext context) {
//               return AlertDialog(
//                 title: Text('Special Offer'),
//                 content: Column(
//                   mainAxisSize: MainAxisSize.min,
//                   children: [
//                     Image.asset('assets/burger/Burger_in_black_background-removebg-preview.png'), // Your offer image
//                     Text(' special offer!'),
//                   ],
//                 ),
//                 actions: <Widget>[
//                   TextButton(
//                     child: Text('View Cart'),
//                     onPressed: () {
//                       Navigator.push(
//                         context,
//                         MaterialPageRoute(
//                           builder: (context) => CartPage(), // Navigate to CartPage
//                         ),
//                       );
//                     },
//                   ),
//
//                 ],
//               );
//             },
//           );
//         },
//         child: Icon(Icons.local_offer),
//       )
//           : null,
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:projecttask/components/my_current_locations.dart';
import 'package:projecttask/components/my_description_box.dart';
import 'package:projecttask/components/my_food_tile.dart';
import 'package:projecttask/components/my_sliver_app_bar.dart';
import 'package:projecttask/components/my_tab_bar.dart';
import 'package:projecttask/models/food.dart';
import 'package:projecttask/pages/food_page.dart';
import 'package:projecttask/pages/cart_page.dart';
import 'package:provider/provider.dart';
import '../components/my_drawer.dart';
import '../models/restaurant.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin {

  // Tab controller
  late TabController _tabController;
  bool _showOfferAlert = false; // State variable for the offer alert

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: FoodCategory.values.length, vsync: this);

    // Simulate an event to show the offer alert
    Future.delayed(Duration(seconds: 1), () {
      setState(() {
        _showOfferAlert = true; // Show the alert after 1 second
      });

      // Set special offer in Restaurant model
      Provider.of<Restaurant>(context, listen: false).setSpecialOffer(true);
    });
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  // Filter food items based on category
  List<Food> _filterMenuCategory(FoodCategory category, List<Food> fullMenu) {
    return fullMenu.where((food) => food.category == category).toList();
  }

  // Return list of food in the given category
  List<Widget> getFoodInThisCategory(List<Food> fullMenu) {
    return FoodCategory.values.map((category) {
      List<Food> categoryMenu = _filterMenuCategory(category, fullMenu);

      return ListView.builder(
        itemCount: categoryMenu.length,
        physics: const NeverScrollableScrollPhysics(),
        padding: EdgeInsets.zero,
        itemBuilder: (context, index) {
          final food = categoryMenu[index];
          return MyFoodTile(
            food: food,
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => FoodPage(food: food),
              ),
            ),
          );
        },
      );
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawer(),
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          MySliverAppBar(
            title: MyTabBar(tabController: _tabController),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Divider(
                  indent: 25,
                  endIndent: 25,
                  color: Theme.of(context).colorScheme.secondary,
                ),
                const MyCurrentLocations(),
                const MyDescriptionBox(),
              ],
            ),
          ),
        ],
        body: Consumer<Restaurant>(
          builder: (context, restaurant, child) => TabBarView(
            controller: _tabController,
            children: getFoodInThisCategory(restaurant.menu),
          ),
        ),
      ),
      // Show an alert dialog if _showOfferAlert is true
      floatingActionButton: _showOfferAlert
          ? FloatingActionButton(
        onPressed: () {
          showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                title: Text('Special Offer'),
                content: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Image.asset('assets/burger/Burger_in_black_background-removebg-preview.png'), // Your offer image
                    const Text('Classic Burger'),
                    const Text(" 0 Amount "),
                    const Text(" A Juicy Beef burger")
                  ],
                ),
                actions: <Widget>[
                  TextButton(
                    child: const Text('View Cart'),
                    onPressed: () {
                      setState(() {
                        _showOfferAlert = false; // Hide the offer alert after viewing the cart
                      });
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => CartPage(), // Navigate to CartPage
                        ),
                      );
                    },
                  ),
                ],
              );
            },
          );
        },
        child: Icon(Icons.local_offer),
      )
          : null,
    );
  }
}
