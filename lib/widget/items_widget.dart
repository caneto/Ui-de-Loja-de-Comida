import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ItemsWidget extends StatelessWidget {
  const ItemsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      shrinkWrap: true,
      childAspectRatio: 0.78,
      children: [
        for(int i=1; i<5; i++)
          Container(
            padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
            margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 15),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Color(0xFF232227),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.4),
                  spreadRadius: 1,
                  blurRadius: 8,
                )
              ]
            ),
            child: Column(
              children: [
                InkWell(
                  onTap: (){
                    Navigator.pushNamed(context, 'singleItemPage');
                  },
                  child: Container(
                    margin: EdgeInsets.all(10),
                    child: Image.asset("images/$i.png",
                    width: 110,
                    height: 110,
                    fit: BoxFit.cover,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 8),
                  child: Container(
                    alignment: Alignment.centerLeft,
                    child: const Text(
                     'Hamburger+Queijo',
                     style: TextStyle(
                       fontSize: 17,
                       fontWeight: FontWeight.bold,
                       color: Colors.white
                     ),
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  child: const Text(
                    'Hamburger Picante',
                    style: TextStyle(
                        fontSize: 14,
                        color: Colors.white60
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        'R\$55',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: Colors.white,
                        ),
                      ),
                      Icon(
                        CupertinoIcons.cart_badge_plus,
                        size: 27,
                        color: Colors.white,
                      ),
                    ],
                  ),
                )
              ],
            ),
          )
      ],
    );
  }
}
