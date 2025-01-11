import 'package:ecommerce_app/modles/shoe.dart';
import 'package:flutter/material.dart';

class Cart extends ChangeNotifier {
  //list of shoes for sale
  List<Shoe> shoeShop = [
    Shoe(
      name: "Superfly 9",
      price: '240',
      description:
          'Advanced fit and traction for elite-level speed performance.',
      imagePath: 'lib/images/SUPERFLY9.png',
    ),
    Shoe(
      name: "Mercurial",
      price: '236',
      description:
          'Lightweight, speed-focused cleats for dynamic, explosive players.',
      imagePath: 'lib/images/mercurial.png',
    ),
    Shoe(
      name: "Vapor",
      price: '160',
      description:
          'Sleek design, emphasizing agility and quick directional changes.',
      imagePath: 'lib/images/VAPOR.png',
    ),
    Shoe(
      name: "Phantom",
      price: '220',
      description:
          'Precision-engineered for playmakers, ensuring control and accuracy.',
      imagePath: 'lib/images/PHANTOM.png',
    ),
    Shoe(
      name: "Superfly 10",
      price: '190',
      description:
          'Improved comfort, agility, and responsiveness with modern tech.',
      imagePath: 'lib/images/SUPERFLY10.png',
    ),
  ];
  //list of items in user cart
  List<Shoe> userCart = [];
  //get list of shoes for sale
  List<Shoe> getShoeList() {
    return shoeShop;
  }

  //get cart
  List<Shoe> getUserCart() {
    return userCart;
  }

  //add items to cart
  void addItemToCart(Shoe shoe) {
    userCart.add(shoe);
    notifyListeners();
  }

  //remove item from cart
  void removeItemFromCart(Shoe shoe) {
    userCart.remove(shoe);
    notifyListeners();
  }
}
