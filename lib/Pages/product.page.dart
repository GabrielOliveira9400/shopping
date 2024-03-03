import 'package:flutter/material.dart';

class ProductPage extends StatelessWidget {
  const ProductPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              backgroundColor: Colors.white.withOpacity(0),
              expandedHeight: 500.0,
              floating: false,
              pinned: true,
              flexibleSpace: FlexibleSpaceBar(
                  centerTitle: true,
                  background: Image.asset(
                    "assets/product-10.png",
                    width: double.infinity,
                    fit: BoxFit.fitWidth,
                  )),
            ),
          ];
        },
        body: ListView(
          children: const <Widget>[
            Padding(
              padding: EdgeInsets.only(top: 10, left: 10, right: 10),
              child: Text(
                "Dry Fit Long Sleeve",
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: Text(
                "by Nike",
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: Text(
                "Detalhes",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: Text(
                "Camiseta Dry Fit Long Sleeve, com toque macio e confortável, com tecnologia que afasta o suor do corpo, mantendo-o seco e confortável. Possui costuras reforçadas e gola careca.",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
