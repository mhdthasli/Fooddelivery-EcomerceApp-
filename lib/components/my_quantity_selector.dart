import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../models/food.dart';

class MyQuantitySelector extends StatelessWidget {

  final int quantity;
  final Food food;
  final VoidCallback onIncrement;
  final VoidCallback onDecrement;


  const MyQuantitySelector({
    super.key,
    required this.quantity,
    required this.food,
    required this.onIncrement,
    required this.onDecrement});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,

     margin: EdgeInsets.all(10),


      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        color: Theme.of(context).colorScheme.background,
      ),


      child:Row(
        mainAxisSize: MainAxisSize.min,
        children: [

          //decrease button
          GestureDetector(
            onTap: onDecrement,
            child: Icon(Icons.remove,
         color:  Theme.of(context).colorScheme.primary,
            size: 20),

          ),

          //quantity count

          Padding(padding: EdgeInsets.symmetric(horizontal: 8),
          
          child: SizedBox(width: 20,
            child: Center(
              child: Text(quantity.toString(),
              ),
            ),
          ),),



          //increase button
          GestureDetector(
            onTap: onIncrement,
            child: Icon(Icons.add,
                color:  Theme.of(context).colorScheme.primary,
                size: 20),

          ),

        ],
      ) ,
    );
  }
}
