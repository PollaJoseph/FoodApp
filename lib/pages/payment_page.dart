import 'package:chatbot/components/My_Button.dart';
import 'package:chatbot/pages/delivery_progress_page.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';

class paymentpage extends StatefulWidget {
  const paymentpage({super.key});

  @override
  State<paymentpage> createState() => _paymentpageState();
}

class _paymentpageState extends State<paymentpage> {
  GlobalKey<FormState> formKey = GlobalKey();
  String cardNumber = "";
  String expiryDate = "";
  String cardHolderName = "";
  String cvvCode = "";
  bool iscvvfocused = false;
  void usertapped() {
    if (formKey.currentState!.validate()) {
      showDialog(
          context: context,
          builder: (context) => AlertDialog(
                title: const Text("CONFIRM PAYMENT"),
                content: SingleChildScrollView(
                  child: ListBody(children: [
                    Text("CARD NUMBER: $cardNumber"),
                    Text("EXPIRY DATE: $expiryDate"),
                    Text("CARD HOLDER NAME: $cardHolderName"),
                    Text("CVV: $cvvCode")
                  ]),
                ),
                actions: [
                  TextButton(
                      onPressed: () => Navigator.pop(context),
                      child: const Text("CANCEL")),
                  TextButton(
                      onPressed: () => {
                            Navigator.pop(context),
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        deliveryprogresspage()))
                          },
                      child: const Text("YES"))
                ],
              ));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
        backgroundColor: Colors.black,
        foregroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("CHECKOUT"),
      ),
      body: ListView(
        children: [
          CreditCardWidget(
            // تفاصيل بطاقة الائتمان
            cardNumber: cardNumber,
            expiryDate: expiryDate,
            cardHolderName: cardHolderName,
            cvvCode: cvvCode,
            showBackView: iscvvfocused,
            onCreditCardWidgetChange: (p0) {},
          ),
          CreditCardForm(
            // نموذج بطاقة الائتمان
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
            formKey: formKey,
          ),
          const SizedBox(height: 20), // تباعد بين العناصر
          MyButton(ontap: usertapped, text: "PAY NOW"),
          const SizedBox(height: 25),
        ],
      ),
    );
  }
}
