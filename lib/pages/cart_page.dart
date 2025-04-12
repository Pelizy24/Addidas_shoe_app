import 'package:addidas_app/component/cart_item.dart';
import 'package:addidas_app/model/cart.dart';
import 'package:addidas_app/model/shoe.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
      builder:
          (context, value, child) => Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            // heading
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Text(
                  'My Cart',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(height: 10),

              Expanded(
                child: ListView.builder(
                  itemCount: value.getUserCart().length,
                  itemBuilder: (context, index) {
                    //get individual shoe
                    Shoe individualshoe = value.getUserCart()[index];

                    //return the list item
                    return CartItem(shoe: individualshoe);
                  },
                ),
              ),
            ],
          ),
    );
  }
}
