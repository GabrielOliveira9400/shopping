import 'package:flutter/material.dart';
import 'package:shopping/Pages/product.page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(15),
        color: const Color(0xFFF5F5F5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            const SizedBox(
              height: 60,
            ),
            search(),
            const SizedBox(
              height: 30,
            ),
            const Text(
              "Categorias",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 90,
              child: categoryList(),
            ),
            const SizedBox(
              height: 30,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Mais Vendidos",
                  style: TextStyle(
                    fontSize: 30,
                  ),
                ),
                TextButton(
                  onPressed: null,
                  child: Text("Ver Todos"),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 350,
              child: productList(context),
            ),
          ],
        ),
      ),
    );
  }
}

Widget search() {
  return Container(
    height: 60,
    decoration: BoxDecoration(
      color: Colors.black.withOpacity(0.1),
      borderRadius: const BorderRadius.all(
        Radius.circular(128),
      ),
    ),
    child: Row(
      children: <Widget>[
        const Padding(
          padding: EdgeInsets.only(left: 20),
          child: Icon(Icons.search),
        ),
        Container(
          width: 300,
          padding: const EdgeInsets.only(left: 10),
          child: TextFormField(
            keyboardType: TextInputType.text,
            decoration: const InputDecoration(
              border: InputBorder.none,
              labelText: "Pesquise...",
              labelStyle: TextStyle(
                color: Colors.blue,
                fontWeight: FontWeight.w300,
                fontSize: 16,
              ),
            ),
            style: const TextStyle(
              fontSize: 20,
              color: Colors.blue,
            ),
          ),
        ),
      ],
    ),
  );
}

Widget categoryList() {
  return SizedBox(
    child: ListView(
      scrollDirection: Axis.horizontal,
      children: <Widget>[
        categoryItem(),
        categoryItem(),
        categoryItem(),
        categoryItem(),
        categoryItem(),
        categoryItem(),
        categoryItem(),
      ],
    ),
  );
}

Widget categoryItem() {
  return Container(
    width: 70,
    height: 70,
    margin: const EdgeInsets.all(10),
    padding: const EdgeInsets.all(10),
    decoration: const BoxDecoration(
      color: Colors.white,
      boxShadow: [
        BoxShadow(
          color: Colors.black12,
          offset: Offset(1, 1),
          blurRadius: 5,
          spreadRadius: 2,
        )
      ],
      borderRadius: BorderRadius.all(
        Radius.circular(64),
      ),
    ),
    child: Image.asset("assets/Icon_Devices.png"),
  );
}

Widget productList(BuildContext context) {
  return SizedBox(
    child: ListView(
      scrollDirection: Axis.horizontal,
      children: <Widget>[
        productItem(context),
        productItem(context),
        productItem(context),
        productItem(context),
        productItem(context),
        productItem(context),
        productItem(context),
        productItem(context),
      ],
    ),
  );
}

Widget productItem(BuildContext context) {
  return Container(
    padding: const EdgeInsets.all(10),
    margin: const EdgeInsets.all(5),
    width: 170,
    color: Colors.black12,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        GestureDetector(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const ProductPage()));
          },
          child: Image.asset(
            "assets/product-1.png",
            height: 170,
            width: 170,
            fit: BoxFit.cover,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        const SizedBox(
          height: 60,
          child: Text(
            "Titulo do Produto",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w300,
            ),
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        const Text(
          "Marca",
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w300,
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        const Text(
          "R\$ 200",
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: Color(0xFF00C569),
          ),
        ),
      ],
    ),
  );
}
