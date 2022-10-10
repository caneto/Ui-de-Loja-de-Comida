import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeNavBar extends StatelessWidget {
  const HomeNavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15),
      height: 80,
      decoration: BoxDecoration(
        color: Color(0xFF232227),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.4),
            spreadRadius: 1,
            blurRadius: 8,
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Icon(
            Icons.mail,
            color: Colors.white,
            size: 35,
          ),
          const Icon(
            Icons.favorite_outlined,
            size: 35,
            color: Colors.white,
          ),
          Container(
            padding: EdgeInsets.all(15),
            decoration: BoxDecoration(
              color: Color(0xFFEFB322),
              borderRadius: BorderRadius.circular(30),
              boxShadow: [
                BoxShadow(
                  color: Colors.white.withOpacity(0.4),
                  spreadRadius: 2,
                  blurRadius: 6,
                ),
              ],
            ),
            child: const Icon(
              CupertinoIcons.cart_fill,
              color: Colors.white,
              size: 30,
            ),
          ),
          const Icon(
            Icons.notifications,
            size: 35,
            color: Colors.white,
          ),
          const Icon(
            Icons.person  ,
            size: 35,
            color: Colors.white,
          ),
        ],
      ),
    );
  }
}
