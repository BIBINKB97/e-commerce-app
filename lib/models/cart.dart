import 'package:ecommerce/models/shoe.dart';
import 'package:flutter/material.dart';

class Cart extends ChangeNotifier {
  
  //List of shoes for sale
  List<Shoe> shoeShop = [
    Shoe(
        name: 'Zoom Freak',
        price: '241',
        imagePath: "images/s1.png",
        description:
            'The forward-thinking design of this latest signature shoe.'),
    Shoe(
        name: 'Air Jordans',
        price: '220',
        imagePath: "images/s2.png",
        description: 'What Nike Shoes Are Best for Long-Distance Running?'),
    Shoe(
        name: 'KD Treys',
        price: '211',
        imagePath: "images/s3.png",
        description:
            'KD Treys is a high-performance shoe that still manages to look seriously cool'),
    Shoe(
        name: 'kyrie 6',
        price: '241',
        imagePath: "images/s4.png",
        description: 'Shop These Nike Running Shoes for Cross Country'),
    Shoe(
        name: 'Nike Air Max',
        price: '190',
        imagePath: "images/s5.png",
        description: 'Find the Perfect Pair of Narrow-Feet Shoes'),
    Shoe(
        name: 'Giannis Freak',
        price: '250',
        imagePath: "images/s6.png",
        description: 'Selecting the Right Running Shoes for Supination'),
    Shoe(
        name: 'Nike P-6000',
        price: '275',
        imagePath: "images/s7.png",
        description:
            'The forward-thinking design of this latest signature shoe.'),
  ];

  // List of items in user cart
  List<Shoe> userCart = [];

  //get List of shoes for sale
  List<Shoe> getShoeList() {
    return shoeShop;
  }

  // get cart
  List<Shoe> getUserCart() {
    return userCart;
  }

  // add items to cart
  void addItemToCart(Shoe shoe) {
    userCart.add(shoe);
    notifyListeners();
  }

  // remove items from the cart
  void removeItemFromCart(Shoe shoe) {
    userCart.remove(shoe);
    notifyListeners();
  }
}
