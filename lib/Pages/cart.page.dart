import 'package:flutter/material.dart';
import 'package:shopping/Pages/home.page.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Expanded(
            child: Container(
              child: productList(),
            ),
          ),
          Container(
            height: 80,
            color: Colors.black12,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                const Padding(
                  padding: EdgeInsets.only(left: 20, top: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "TOTAL",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(height: 5),
                      Text(
                        "R\$ 4250",
                        style: TextStyle(
                          color: Colors.blue,
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 50,
                  width: 150,
                  margin: const EdgeInsets.only(right: 20),
                  decoration: const BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.all(
                      Radius.circular(5),
                    ),
                  ),
                  child: TextButton(
                    child: const Text(
                      "Checkout",
                      style: TextStyle(color: Colors.white),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const HomePage(),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

Widget productList() {
  return ListView(
    children: <Widget>[
      productItem(),
      productItem(),
      productItem(),
      productItem(),
      productItem(),
      productItem(),
      productItem(),
    ],
  );
}

Widget productItem() {
  return Container(
    height: 120,
    margin: const EdgeInsets.all(5),
    child: Row(
      children: <Widget>[
        Container(
          width: 100,
          height: 100,
          margin: const EdgeInsets.all(10),
          child: Image.asset("assets/product-1.png", fit: BoxFit.cover),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 20, left: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const Text("Titulo do produto"),
              const Text(
                "R\$ 200",
                style: TextStyle(
                  color: Colors.blue,
                ),
              ),
              const SizedBox(height: 10),
              Container(
                height: 30,
                width: 120,
                decoration: const BoxDecoration(
                  color: Colors.black12,
                  borderRadius: BorderRadius.all(
                    Radius.circular(5),
                  ),
                ),
                child: Row(
                  children: <Widget>[
                    Container(
                      width: 40,
                      alignment: Alignment.center,
                      child: TextButton(
                        child: const Text("+"),
                        onPressed: () {},
                      ),
                    ),
                    Container(
                      width: 40,
                      alignment: Alignment.center,
                      child: const Text("1"),
                    ),
                    Container(
                      width: 40,
                      alignment: Alignment.center,
                      child: TextButton(
                        child: const Text("-"),
                        onPressed: () {},
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        )
      ],
    ),
  );
}
