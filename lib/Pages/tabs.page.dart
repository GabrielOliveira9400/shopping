import 'package:flutter/material.dart';
import 'package:shopping/Pages/cart.page.dart';
import 'package:shopping/Pages/home.page.dart';
import 'package:shopping/Pages/login.page.dart';

class TabsPage extends StatelessWidget {
  const TabsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: TabBarView(
        children: <Widget>[HomePage(), CartPage(), LoginPage()],
      ),
      bottomNavigationBar: TabBar(
        tabs: <Widget>[
          Tab(
            icon: Icon(Icons.home),
          ),
          Tab(
            icon: Icon(Icons.shopping_cart),
          ),
          Tab(
            icon: Icon(Icons.perm_identity),
          ),
        ],
        labelColor: Colors.blue,
        unselectedLabelColor: Colors.black12,
        indicatorSize: TabBarIndicatorSize.label,
        indicatorPadding: EdgeInsets.all(5.0),
        indicatorColor: Colors.blue,
      ),
    );
  }
}
