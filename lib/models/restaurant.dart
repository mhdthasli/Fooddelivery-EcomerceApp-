import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:projecttask/models/cart_item.dart';
import 'package:projecttask/models/food.dart';

class Restaurant extends ChangeNotifier {
  // List of food menu
  final List<Food> _menu = [

    //burgers

    Food(
        name: "Clasic Burger",
        description: "A juicy beef burger",
        imagePath:"assets/burger/Burger_in_black_background-removebg-preview.png" ,
        price: 160,
        category: FoodCategory.burgers,
        availableAddons: [Addons(name: "Extra cheese", price: 40),
          Addons(name: "Extra cheese", price: 40),
          Addons(name: "Extra cheese", price: 40)
    ]
  ),

    Food(
        name: "Clasic Burger",
        description: "A juicy beef burger",
        imagePath:"assets/burger/png-transparent-graphy-of-burger-with-tomato-and-vegetable-veggie-burger-hamburger-vegetarian-cuisine-chicken-sandwich-vada-pav-burger-food-cheese-recipe-thumbnail-removebg-preview.png" ,
        price: 160,
        category: FoodCategory.burgers,
        availableAddons: [
          Addons(name: "Extra cheese", price: 40,),
          Addons(name: "Extra cheese", price: 40,),
          Addons(name: "Extra cheese", price: 40,)

        ]
    ),

    Food(
        name: "Clasic Burger",
        description: "A juicy beef burger",
        imagePath:"assets/burger/png-transparent-graphy-of-burger-with-tomato-and-vegetable-veggie-burger-hamburger-vegetarian-cuisine-chicken-sandwich-vada-pav-burger-food-cheese-recipe-thumbnail-removebg-preview.png" ,
        price: 160,
        category: FoodCategory.burgers,
        availableAddons: [Addons(name: "Extra cheese", price: 40),
          Addons(name: "Extra cheese", price: 40,),
          Addons(name: "Extra cheese", price: 40,)
        ]
    ),

    // desserts

    Food(
        name: "chocolate cake",
        description: "super yummy cake",
        imagePath:"assets/desserts/Dessert---Chocolate-Cake-with-Fresh-Strawberry-on-transparent-background-PNG-removebg-preview.png" ,
        price: 100,
        category: FoodCategory.desserts,
        availableAddons: [Addons(name: "Extra cream", price: 40),
          Addons(name: "Extra cream", price: 40),
          Addons(name: "Extra cream", price: 40)
        ]
    ),

    Food(
        name: "chocolate cake",
        description: "super yummy cake",
        imagePath:"assets/desserts/png-transparent-dessert-cake-sprinkles-pastry-chocolate-cake-cream-white-food-removebg-preview.png" ,
        price: 100,
        category: FoodCategory.desserts,
        availableAddons: [Addons(name: "Extra cream", price: 40),
          Addons(name: "Extra cream", price: 40),
          Addons(name: "Extra cream", price: 40)
        ]
    ),



    Food(
        name: "chocolate cake",
        description: "super yummy cake",
        imagePath:"assets/desserts/png-transparent-tart-cream-custard-salad-dessert-food-share-baked-goods-baking-recipe-removebg-preview.png" ,
        price: 100,
        category: FoodCategory.desserts,
        availableAddons: [Addons(name: "Extra cream", price: 40),
          Addons(name: "Extra cream", price: 40),
          Addons(name: "Extra cream", price: 40)
        ]
    ),


    //drinks

    Food(
        name: "blue mojito",
        description: "super yummy drinks",
        imagePath:"assets/drinks_mojito/png-transparent-clear-drinking-glass-filled-with-blue-liquid-blue-hawaii-rickey-mojito-cocktail-vodka-tonic-lemon-mint-curacao-blue-non-alcoholic-beverage-summer-removebg-preview.png" ,
        price: 100,
        category: FoodCategory.drinks,
        availableAddons: [Addons(name: "Extra mint", price: 40),
          Addons(name: "Extra mint", price: 40),
          Addons(name: "Extra mint", price: 40)
        ]
    ),

    Food(
        name: "mint mojito",
        description: "super yummy drinks",
        imagePath:"assets/drinks_mojito/png-transparent-of-cocktail-mojito-cocktail-juice-fizzy-drinks-beer-mojito-food-non-alcoholic-beverage-lime-juice-thumbnail-removebg-preview.png" ,
        price: 100,
        category: FoodCategory.drinks,
        availableAddons: [Addons(name: "Extra mint", price: 40),
          Addons(name: "Extra mint", price: 40),
          Addons(name: "Extra mint", price: 40)
        ]
    ),

    Food(
        name: "passion mojito",
        description: "super yummy drinks",
        imagePath:"assets/drinks_mojito/pngtree-passion-fruit-mojito-tropical-cocktail-png-image_10163471-removebg-preview.png" ,
        price: 100,
        category: FoodCategory.drinks,
        availableAddons: [Addons(name: "Extra mint", price: 40),
          Addons(name: "Extra mint", price: 40),
          Addons(name: "Extra mint", price: 40)
        ]
    ),


    //salad

    Food(
        name: "salad",
        description: "super yummy drinks",
        imagePath:"assets/sald/png-clipart-greek-salad-spinach-salad-fattoush-caesar-salad-vegetarian-cuisine-salad-leaf-vegetable-food-thumbnail-removebg-preview.png" ,
        price: 100,
        category: FoodCategory.salads,
        availableAddons: [Addons(name: "Extra chicken", price: 40),
          Addons(name: "Extra chicken", price: 40),
          Addons(name: "Extra chicken", price: 40)
        ]
    ),


    Food(
        name: "salad",
        description: "super yummy drinks",
        imagePath:"assets/sald/png-transparent-greek-salad-caesar-salad-wrap-bean-salad-pasta-salad-salad-vegetable-salad-leaf-vegetable-food-recipe-thumbnail-removebg-preview (1).png" ,
        price: 100,
        category: FoodCategory.salads,
        availableAddons: [Addons(name: "Extra chicken", price: 40),
          Addons(name: "Extra chicken", price: 40),
          Addons(name: "Extra chicken", price: 40)
        ]
    ),

    Food(
        name: "salad",
        description: "super yummy drinks",
        imagePath:"assets/sald/salad-png-transparent-images-ketogenic-vegan-50-healthy-delicious-recipes-11562904467nwyqiibd9x-removebg-preview.png" ,
        price: 100,
        category: FoodCategory.salads,
        availableAddons: [Addons(name: "Extra chicken", price: 40),
          Addons(name: "Extra chicken", price: 40),
          Addons(name: "Extra chicken", price: 40)
        ]
    ),








  ];

  // User cart
  final List<CartItem> _cart = [];

  // delivery address(which user can/update)
  String _deliveryAddress = "99 Hollywood Blv";

  // special offer flag
  bool hasSpecialOffer = false;





  // Getters
  List<Food> get menu => _menu;
  List<CartItem> get cart => _cart;
  String get deliveryAddress => _deliveryAddress;










  // Add to cart
  void addToCart(Food food, List<Addons> selectedAddons) {
    CartItem? cartItem = _cart.firstWhereOrNull((item) {
      bool isSameFood = item.food == food;
      bool isSameAddons = const ListEquality().equals(item.selectedAddons, selectedAddons);
      return isSameFood && isSameAddons;
    });

    if (cartItem != null) {
      cartItem.quantity++;
    } else {
      _cart.add(CartItem(
        food: food,
        selectedAddons: selectedAddons,
        quantity: 1,
      ));
    }
    notifyListeners();
  }

  // Remove from cart
  void removeFromCart(CartItem cartItem) {
    int cartIndex = _cart.indexOf(cartItem);

    if (cartIndex != -1) {
      if (_cart[cartIndex].quantity > 1) {
        _cart[cartIndex].quantity--;
      } else {
        _cart.removeAt(cartIndex);
      }
    }
    notifyListeners();
  }

  // Get total price of cart
  double getTotalPrice() {
    double total = 0.0;

    for (CartItem cartItem in _cart) {
      double itemTotal = cartItem.food.price;

      for (Addons addon in cartItem.selectedAddons) {
        itemTotal += addon.price;
      }
      total += itemTotal * cartItem.quantity;
    }
    return total;
  }

  // Get total number of items in cart
  int getTotalItemCount() {
    int totalItemCount = 0;

    for (CartItem cartItem in _cart) {
      totalItemCount += cartItem.quantity;
    }
    return totalItemCount;
  }

  // Clear cart
  void clearCart() {
    _cart.clear();
    notifyListeners();
  }


  void setSpecialOffer(bool hasOffer) {
    hasSpecialOffer = hasOffer;
    notifyListeners();
  }

  // udate delivery address
  void UpdateDeliveryAddress(String newAddress){
    _deliveryAddress = newAddress;
    notifyListeners();
  }





  // Generate a receipt
  String displayCartReceipt() {
    final receipt = StringBuffer();
    receipt.writeln("Here's your receipt.");
    receipt.writeln();

    // Format the date to include up to seconds only
    String formattedDate = DateFormat("yyyy-MM-dd HH:mm:ss").format(DateTime.now());
    receipt.writeln(formattedDate);
    receipt.writeln();
    receipt.writeln("----------");

    for (final cartItem in _cart) {
      receipt.writeln("${cartItem.quantity} x ${cartItem.food.name} - ${_formatPrice(cartItem.food.price)}");

      if (cartItem.selectedAddons.isNotEmpty) {
        receipt.writeln(" Add-ons: ${_formatAddons(cartItem.selectedAddons)}");
      }
      receipt.writeln();
    }
    receipt.writeln("----------");
    receipt.writeln();
    receipt.writeln("Total Items: ${getTotalItemCount()}");
    receipt.writeln("Total Price: ${_formatPrice(getTotalPrice())}");
    receipt.writeln();
    receipt.writeln("Delivery to: $deliveryAddress");

    return receipt.toString();
  }

  // Format double value into money
  String _formatPrice(double price) {
    return "\$${price.toStringAsFixed(2)}";
  }

  // Format list of addons into a string summary
  String _formatAddons(List<Addons> addons) {
    return addons
        .map((addon) => "${addon.name} (${_formatPrice(addon.price)})")
        .join(", ");
  }
}

