import 'package:asesmen/widgets/back_widget.dart';
import 'package:asesmen/widgets/cart_widget_bill.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      body: Column(
        children: [
          BackWidget(),
          ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.blueAccent),
              ),
              child: Text(
                "Add Data",
              ),
            ),
          Column(
            children: [
              CartBill(),
            ],
          ),
        ],
      ),
    );
  }
}
      
              
              
           
          