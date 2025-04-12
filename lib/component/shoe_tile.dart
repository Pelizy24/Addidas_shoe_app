import 'package:addidas_app/model/shoe.dart';
import 'package:flutter/material.dart';

class ShoeTile extends StatelessWidget {
  final void Function()? onTap;
  final Shoe shoe;
  const ShoeTile({super.key, required this.shoe, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 25),
      width: 300,
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          //shoe pics
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.asset(shoe.imagePath, height: 250),
          ),

          //description
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Text(
              shoe.description,
              style: TextStyle(color: Colors.grey[800]),
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(left: 25),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      shoe.name,
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    //shoe name
                    const SizedBox(height: 5),
                    //price
                    Text(
                      '\$${shoe.price}',
                      style: const TextStyle(color: Colors.grey),
                    ),
                  ],
                ),

                GestureDetector(
                  onTap: onTap,
                  child: Container(
                    padding: EdgeInsets.all(20),
                    decoration: const BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(12),
                        bottomRight: Radius.circular(12),
                      ),
                    ),

                    child: const Icon(Icons.add, color: Colors.white),
                  ),
                ),
                //plus button
              ],
            ),
          ),
          // price + details

          //bottom add to cart
        ],
      ),
    );
  }
}
