import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:uilojadecomidas/widget/single_item_navbar.dart';

class SingleItemPage extends StatelessWidget {
  const SingleItemPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF232227),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 25, left: 10, right: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: const Icon(
                      Icons.arrow_back_ios_new,
                      color: Colors.white,
                      size: 32,
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: const Icon(
                      CupertinoIcons.cart_fill,
                      color: Colors.white,
                      size: 32,
                    ),
                  )
                ],
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Image.asset(
                    "images/bg.png",
                    height: MediaQuery.of(context).size.height / 1.9,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Hamburger quente\ne fresco',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Row(
                          children: [
                            Container(
                              alignment: Alignment.center,
                              width: 30,
                              height: 30,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: const Icon(
                                CupertinoIcons.minus,
                                size: 20,
                              ),
                            ),
                            const SizedBox(width: 8),
                            const Text(
                              '2',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(width: 8),
                            InkWell(
                              onTap: () {},
                              child: Container(
                                alignment: Alignment.center,
                                width: 30,
                                height: 30,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: const Icon(
                                  CupertinoIcons.plus,
                                  size: 20,
                                ),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const Text(
                    'Trazemos até você o hambúrguer com queijo servido com cebola, bebida gelada e batata frita. ',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: SingleItemNavBar(),
    );
  }
}
