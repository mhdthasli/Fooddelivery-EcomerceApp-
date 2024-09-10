// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
//
// import 'package:projecttask/components/my_cart_tile.dart';
// import 'package:projecttask/models/restaurant.dart';
// import 'package:projecttask/pages/payment_page.dart';
//
// import 'package:provider/provider.dart';
//
// import '../components/my_button.dart';
//
// // class CartPage extends StatelessWidget {
// //   const CartPage({super.key});
// //
// //   @override
// //   Widget build(BuildContext context) {
// //     return Consumer<Restaurant>(
// //       builder: (context, restaurant, child) {
// //         // cart
// //
// //         final userCart = restaurant.cart;
// //
// //         // scaffol UI
// //         return Scaffold(
// //           appBar: AppBar(
// //             title: const Text(" Cart"),
// //             centerTitle: true,
// //             backgroundColor: Colors.transparent,
// //             foregroundColor: Theme.of(context).colorScheme.inversePrimary,
// //             actions: [
// //               IconButton(
// //                   onPressed: () {
// //                     showDialog(
// //                       context: context,
// //                       builder: (context) => AlertDialog(
// //                         title: const Text(
// //                             "Are you sure you want to clear the cart?"),
// //                         actions: [
// //                           // cancel button
// //
// //                           TextButton(
// //                             onPressed: () => Navigator.pop(context),
// //                             child: const Text("Cancel"),
// //                           ),
// //
// //                           //yes button
// //                           TextButton(
// //                             onPressed: () {
// //                               Navigator.pop(context);
// //                               restaurant.clearCart();
// //                             },
// //                             child: const Text("Yes"),
// //                           ),
// //                         ],
// //                       ),
// //                     );
// //                   },
// //                   icon: const Icon(Icons.delete))
// //             ],
// //           ),
// //           body: Column(
// //
// //             children: [
// //
// //               // list of cart
// //
// //
// //               Expanded(
// //                 child: Column(
// //                   children: [
// //                     userCart.isEmpty
// //                         ? const Expanded(
// //                             child: Center(child:  Text("Cart is empty..")))
// //                         : Expanded(
// //                             child: ListView.builder(
// //                                 itemCount: userCart.length,
// //                                 itemBuilder: (context, index) {
// //                                   // get individual cart item
// //                                   final cartItem = userCart[index];
// //
// //                                   // return cart tile UI
// //                                   return MyCartTile(cartItem: cartItem);
// //                                 },
// //                                 ),
// //                           ),
// //                   ],
// //                 ),
// //               ),
// //               //button to pay
// //
// //               MyButton(
// //                   onTap: () => Navigator.push(context,MaterialPageRoute(builder: (context)=> PaymentPage(),),),
// //                   text: "Go to checkout"
// //                   ),
// //
// //               const SizedBox(height: 20),
// //
// //
// //             ],
// //           ),
// //
// //
// //         );
// //       },
// //     );
// //   }
// // }
// // class CartPage extends StatelessWidget {
// //   const CartPage({super.key});
// //
// //   @override
// //   Widget build(BuildContext context) {
// //     return Consumer<Restaurant>(
// //       builder: (context, restaurant, child) {
// //         final userCart = restaurant.cart;
// //
// //         return Scaffold(
// //           appBar: AppBar(
// //             title: const Text("Cart"),
// //             centerTitle: true,
// //             backgroundColor: Colors.transparent,
// //             foregroundColor: Theme.of(context).colorScheme.inversePrimary,
// //             actions: [
// //               IconButton(
// //                 onPressed: () {
// //                   showDialog(
// //                     context: context,
// //                     builder: (context) => AlertDialog(
// //                       title: const Text("Are you sure you want to clear the cart?"),
// //                       actions: [
// //                         TextButton(
// //                           onPressed: () => Navigator.pop(context),
// //                           child: const Text("Cancel"),
// //                         ),
// //                         TextButton(
// //                           onPressed: () {
// //                             Navigator.pop(context);
// //                             restaurant.clearCart();
// //                           },
// //                           child: const Text("Yes"),
// //                         ),
// //                       ],
// //                     ),
// //                   );
// //                 },
// //                 icon: const Icon(Icons.delete),
// //               ),
// //             ],
// //           ),
// //           body: SingleChildScrollView(
// //             child: Column(
// //               children: [
// //                 // Your existing widgets without Expanded
// //                 if (restaurant.hasSpecialOffer)
// //                   Padding(
// //                     padding: const EdgeInsets.all(16.0),
// //                     child: Container(
// //                       padding: const EdgeInsets.all(8.0),
// //                       decoration: BoxDecoration(
// //                         color: Colors.amber,
// //                         borderRadius: BorderRadius.circular(10),
// //                       ),
// //                       child: Row(
// //                         children: [
// //                           ClipRRect(
// //                             borderRadius: BorderRadius.circular(8.0),
// //                             child: Image.asset(
// //                               'assets/burger/Burger_in_black_background-removebg-preview.png',
// //                               width: 100,
// //                               height: 100,
// //                               fit: BoxFit.cover,
// //                             ),
// //                           ),
// //                           const SizedBox(width: 10),
// //                           const Expanded(
// //                             child: Text(
// //                               'Special Offer! Get an extra 100% off.',
// //                               style: TextStyle(fontSize: 16),
// //                             ),
// //                           ),
// //                           IconButton(
// //                             icon: const Icon(Icons.close),
// //                             onPressed: () {
// //                               restaurant.setSpecialOffer(false);
// //                             },
// //                           ),
// //                         ],
// //                       ),
// //                     ),
// //                   ),
// //                 ListView.builder(
// //                   physics: NeverScrollableScrollPhysics(),
// //                   shrinkWrap: true, // Allows the ListView to shrink to its children
// //                   itemCount: userCart.length,
// //                   itemBuilder: (context, index) {
// //                     final cartItem = userCart[index];
// //                     return MyCartTile(cartItem: cartItem);
// //                   },
// //                 ),
// //                 MyButton(
// //                   onTap: () => Navigator.push(
// //                     context,
// //                     MaterialPageRoute(builder: (context) => PaymentPage()),
// //                   ),
// //                   text: "Go to checkout",
// //                 ),
// //                 const SizedBox(height: 20),
// //               ],
// //             ),
// //           ),
// //         );
// //       },
// //     );
// //   }
// // }
// class CartPage extends StatelessWidget {
//   const CartPage({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Consumer<Restaurant>(
//       builder: (context, restaurant, child) {
//         final userCart = restaurant.cart;
//
//         return Scaffold(
//           appBar: AppBar(
//             title: const Text("Cart"),
//             centerTitle: true,
//             backgroundColor: Colors.transparent,
//             foregroundColor: Theme.of(context).colorScheme.inversePrimary,
//             actions: [
//               IconButton(
//                 onPressed: () {
//                   showDialog(
//                     context: context,
//                     builder: (context) => AlertDialog(
//                       title: const Text("Are you sure you want to clear the cart?"),
//                       actions: [
//                         TextButton(
//                           onPressed: () => Navigator.pop(context),
//                           child: const Text("Cancel"),
//                         ),
//                         TextButton(
//                           onPressed: () {
//                             Navigator.pop(context);
//                             restaurant.clearCart(); // This clears the cart and rebuilds the UI
//                           },
//                           child: const Text("Yes"),
//                         ),
//                       ],
//                     ),
//                   );
//                 },
//                 icon: const Icon(Icons.delete),
//               ),
//             ],
//           ),
//           body: SingleChildScrollView(
//             child: Column(
//               children: [
//                 if (restaurant.hasSpecialOffer)
//                   Padding(
//                     padding: const EdgeInsets.all(16.0),
//                     child: Container(
//                       padding: const EdgeInsets.all(8.0),
//                       decoration: BoxDecoration(
//                         color: Colors.amber,
//                         borderRadius: BorderRadius.circular(10),
//                       ),
//                       child: Row(
//                         children: [
//                           ClipRRect(
//                             borderRadius: BorderRadius.circular(8.0),
//                             child: Image.asset(
//                               'assets/burger/Burger_in_black_background-removebg-preview.png',
//                               width: 100,
//                               height: 100,
//                               fit: BoxFit.cover,
//                             ),
//                           ),
//                           const SizedBox(width: 10),
//                           const Expanded(
//                             child: Text(
//                               'Special Offer! Get an extra 100% off.',
//                               style: TextStyle(fontSize: 16,color: Colors.white),
//                             ),
//                           ),
//                           IconButton(onPressed: (){
//                             restaurant.setSpecialOffer(false);
//                           }, icon: Icon(Icons.close))
//
//                         ],
//                       ),
//                     ),
//                   ),
//                 ListView.builder(
//                   physics: const NeverScrollableScrollPhysics(),
//                   shrinkWrap: true,
//                   itemCount: userCart.length,
//                   itemBuilder: (context, index) {
//                     final cartItem = userCart[index];
//                     return MyCartTile(cartItem: cartItem);
//                   },
//                 ),
//                 MyButton(
//                   onTap: () => Navigator.push(
//                     context,
//                     MaterialPageRoute(builder: (context) => const PaymentPage()),
//                   ),
//                   text: "Go to checkout",
//                 ),
//                 const SizedBox(height: 20),
//               ],
//             ),
//           ),
//         );
//       },
//     );
//   }
// }
//
//
//
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:projecttask/components/my_cart_tile.dart';
import 'package:projecttask/models/restaurant.dart';
import 'package:projecttask/pages/payment_page.dart';
import 'package:provider/provider.dart';
import '../components/my_button.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<Restaurant>(
      builder: (context, restaurant, child) {
        final userCart = restaurant.cart;

        return Scaffold(
          appBar: AppBar(
            title: const Text("Cart"),
            centerTitle: true,
            backgroundColor: Colors.transparent,
            foregroundColor: Theme.of(context).colorScheme.inversePrimary,
            actions: [
              IconButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      title: const Text("Are you sure you want to clear the cart?"),
                      actions: [
                        TextButton(
                          onPressed: () => Navigator.pop(context),
                          child: const Text("Cancel"),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                            restaurant.clearCart(); // This clears the cart and rebuilds the UI
                          },
                          child: const Text("Yes"),
                        ),
                      ],
                    ),
                  );
                },
                icon: const Icon(Icons.delete),
              ),
            ],
          ),
          body: SingleChildScrollView(
            child: Column(
              children: [
                if (restaurant.hasSpecialOffer)
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Container(
                      padding: const EdgeInsets.all(8.0),
                      decoration: BoxDecoration(
                        color: Colors.amber,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(8.0),
                            child: Image.asset(
                              'assets/burger/Burger_in_black_background-removebg-preview.png',
                              width: 100,
                              height: 100,
                              fit: BoxFit.cover,
                            ),
                          ),
                          const SizedBox(width: 10),
                          Expanded(
                            child: Row(
                              children:[ Column(children: [

                                const Text(
                                'classic burger',
                                style: TextStyle(fontSize: 16, color: Colors.white,fontWeight: FontWeight.bold),
                              ),
                                const Text("0 Amount",style: TextStyle(
                                    fontSize: 16, color: Colors.white,fontWeight: FontWeight.bold
                                ),),

                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
                                    color: Colors.white),child:
                                    Row(
                                      children: [
                                        Text("Extra cheese only ",style: TextStyle(color: Colors.black87,fontSize: 13),

                                        ),
                                      ],
                                    ),

                                  ),
                                )

                          ],
                          ),
                            ]
                            ),

                          ),
                          IconButton(
                            onPressed: () {
                              restaurant.setSpecialOffer(false); // Removes the offer
                            },
                            icon: const Icon(Icons.close),
                          ),
                        ],
                      ),
                    ),
                  ),
                ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: userCart.length,
                  itemBuilder: (context, index) {
                    final cartItem = userCart[index];
                    return MyCartTile(cartItem: cartItem);
                  },
                ),
                MyButton(
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const PaymentPage()),
                  ),
                  text: "Go to checkout",
                ),
                const SizedBox(height: 20),
              ],
            ),
          ),
        );
      },
    );
  }
}

