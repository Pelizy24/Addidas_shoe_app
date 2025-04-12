import 'package:flutter/material.dart';

import 'shoe.dart';

class Cart extends ChangeNotifier {
  // list of shoe for sale
  List<Shoe> shoeShop = [
    Shoe(
      price: '380',
      imagePath: 'lib/images/addidas_brown.jpg',
      description: 'Awesome shoe for fits',
      name: 'Campus',
    ),
    Shoe(
      price: '300',
      imagePath: 'lib/images/addidas_purple.jpg',
      description: 'Purple a style you cant go wrong',
      name: 'Superstar',
    ),
    Shoe(
      price: '250',
      imagePath: 'lib/images/addidas_black.jpg',
      description: 'Amazing fit to wear',
      name: 'Slides',
    ),
    Shoe(
      price: '350',
      imagePath: 'lib/images/addidas_white.jpg',
      description: 'Trendy',
      name: 'Flat tops',
    ),
  ];

  //list of item i user cart
  List<Shoe> userCart = [];

  // get list of shoe for sale
  List<Shoe> getShoeList() {
    return shoeShop;
  }

  //get cart
  List<Shoe> getUserCart() {
    return userCart;
  }

  //add to cart
  void addItemToCart(Shoe shoe) {
    userCart.add(shoe);
    notifyListeners();
  }

  //remove from cart
  void removeitemfromCart(Shoe shoe) {
    userCart.remove(shoe);
    notifyListeners();
  }
}
