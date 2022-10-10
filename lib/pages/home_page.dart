import 'package:flutter/material.dart';
import 'package:uilojadecomidas/widget/home_navbar.dart';
import 'package:uilojadecomidas/widget/items_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
          backgroundColor: Color(0xFF232227),
          body: SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          onTap: () {},
                          child: const Icon(
                            Icons.sort_rounded,
                            color: Colors.white,
                            size: 35,
                          ),
                        ),
                        InkWell(
                          onTap: () {},
                          child: const Icon(
                            Icons.search,
                            color: Colors.white,
                            size: 35,
                          ),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    child: Text('Comida Quente e Rapida',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const SizedBox(height: 5,),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15,),
                    child: Text('Entrega dantro do Tempo',
                      style: TextStyle(
                        color: Colors.white60,
                        fontSize: 22
                      ),
                    ),
                  ),
                  const SizedBox(height: 30,),
                  const TabBar(
                    isScrollable: true,
                    indicator: BoxDecoration(),
                    labelStyle: TextStyle(fontSize: 20),
                    labelPadding: EdgeInsets.symmetric(horizontal: 20),
                    tabs: [
                      Tab(text: 'Hamburger',),
                      Tab(text: 'Pizza',),
                      Tab(text: 'Queijo',),
                      Tab(text: 'Pasta',),
                    ]
                  ),
                  const Flexible(
                    flex: 1,
                    child: TabBarView(
                      children: [
                        ItemsWidget(),
                        ItemsWidget(),
                        ItemsWidget(),
                        ItemsWidget(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          bottomNavigationBar: const HomeNavBar(),
      ),
    );
  }
}
