// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_credit_card/flutter_credit_card.dart';
// import 'package:projecttask/components/my_button.dart';
//
// import 'delivery_progress_page.dart';
//
// class PaymentPage extends StatefulWidget {
//   const PaymentPage({super.key});
//
//   @override
//   State<PaymentPage> createState() => _PaymentPageState();
// }
//
// class _PaymentPageState extends State<PaymentPage> {
//   GlobalKey<FormState> formkey = GlobalKey<FormState>();
//
//   String cardNumber = "";
//
//   String expiryDate = "";
//
//   String cardHolderName = "";
//
//   String cvvCode = "";
//   bool isCvvFocused = false;
//
//   // user want to pay
//
//   void userTappedPay() {
//     if (formkey.currentState!.validate()) {
//       //only show dialog if form is a valid
//
//       showDialog(
//           context: context,
//           builder: (context) => AlertDialog(
//                 title: const Text("Confrim Payment "),
//                 content: SingleChildScrollView(
//                   child: ListBody(
//                     children: [
//                       Text("Card Number: $cardNumber"),
//                       Text("Expiry Date : $expiryDate"),
//                       Text(" Card HolderName: $cardHolderName"),
//                       Text(" Cvv: $cvvCode"),
//                     ],
//                   ),
//                 ),
//                 actions: [
//                   //cancel button
//
//                   TextButton(
//                     onPressed: () => Navigator.pop(context),
//                     child: const Text("Cancel"),
//                   ),
//
//                   // yes button
//                   TextButton(
//                     onPressed: () => Navigator.push(
//                         context,
//                         MaterialPageRoute(
//                           builder: (context) => const DeliveryProgressPage(),
//                         )),
//                     child: const Text("Yes"),
//                   ),
//                 ],
//               ));
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Theme.of(context).colorScheme.background,
//       appBar: AppBar(
//         backgroundColor: Colors.transparent,
//         centerTitle: true,
//         foregroundColor: Theme.of(context).colorScheme.inversePrimary,
//         title: const Text("Checkout"),
//       ),
//       body: Column(
//         children: [
//           // credit card
//           CreditCardWidget(
//               cardNumber: cardNumber,
//               expiryDate: expiryDate,
//               cardHolderName: cardHolderName,
//               cvvCode: cvvCode,
//               showBackView: isCvvFocused,
//               onCreditCardWidgetChange: (p0) {}),
//
//           // credit card form
//
//           CreditCardForm(
//             cardNumber: cardNumber,
//             expiryDate: expiryDate,
//             cardHolderName: cardHolderName,
//             cvvCode: cvvCode,
//             onCreditCardModelChange: (data) {
//               setState(() {
//                 cardNumber = data.cardNumber;
//                 expiryDate = data.expiryDate;
//                 cardHolderName = data.cardHolderName;
//                 cvvCode = data.cvvCode;
//               });
//             },
//             formKey: formkey,
//           ),
//
//           const Spacer(),
//
//           MyButton(onTap: () {}, text: "Pay now"),
//
//           const SizedBox(height: 25),
//         ],
//       ),
//     );
//   }
// }


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';
import 'package:projecttask/components/my_button.dart';

import 'delivery_progress_page.dart';

class PaymentPage extends StatefulWidget {
  const PaymentPage({super.key});

  @override
  State<PaymentPage> createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  GlobalKey<FormState> formkey = GlobalKey<FormState>();

  String cardNumber = "";
  String expiryDate = "";
  String cardHolderName = "";
  String cvvCode = "";
  bool isCvvFocused = false;

  // user want to pay
  void userTappedPay() {
    if (formkey.currentState!.validate()) {
      //only show dialog if form is valid
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: const Text("Confirm Payment"),
          content: SingleChildScrollView(
            child: ListBody(
              children: [
                Text("Card Number: $cardNumber"),
                Text("Expiry Date: $expiryDate"),
                Text("Card Holder Name: $cardHolderName"),
                Text("CVV: $cvvCode"),
              ],
            ),
          ),
          actions: [
            //cancel button
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text("Cancel"),
            ),
            // yes button
            TextButton(
              onPressed: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const DeliveryProgressPage(),
                  ),
                );
              },
              child: const Text("Yes"),
            ),
          ],
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      // Allows the screen to adjust when the keyboard is open
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        centerTitle: true,
        foregroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("Checkout"),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              // credit card
              CreditCardWidget(
                cardNumber: cardNumber,
                expiryDate: expiryDate,
                cardHolderName: cardHolderName,
                cvvCode: cvvCode,
                showBackView: isCvvFocused,
                onCreditCardWidgetChange: (p0) {},
              ),
              // credit card form
              CreditCardForm(
                cardNumber: cardNumber,
                expiryDate: expiryDate,
                cardHolderName: cardHolderName,
                cvvCode: cvvCode,
                onCreditCardModelChange: (data) {
                  setState(() {
                    cardNumber = data.cardNumber;
                    expiryDate = data.expiryDate;
                    cardHolderName = data.cardHolderName;
                    cvvCode = data.cvvCode;
                  });
                },
                formKey: formkey,
              ),
              const SizedBox(height: 80),
              MyButton(
                onTap: userTappedPay,
                text: "Pay now",
              ),
              const SizedBox(height: 25),
            ],
          ),
        ),
      ),
    );
  }
}
