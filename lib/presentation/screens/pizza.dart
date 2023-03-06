import 'package:flutter/material.dart';

class WidgetPedidoPizza extends StatelessWidget {
  const WidgetPedidoPizza({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          elevation: 4,
          title: const Center(
            child: Text(
              "Develop's pizzas",
              textAlign: TextAlign.right,
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
          ),
          actions: [
            FloatingActionButton(
              mini: true,
              backgroundColor: Colors.lightBlue,
              onPressed: () {},
              child: const Icon(Icons.shopping_bag_outlined),
            ),
          ]),
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(20),
            width: double.infinity,
            height: 350,
            child: Container(
              decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 173, 200, 197),
                  borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(5),
                      bottomLeft: Radius.circular(5),
                      topLeft: Radius.circular(5),
                      topRight: Radius.circular(5)),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey, offset: Offset(2, 2), blurRadius: 6)
                  ]),
              child: Stack(
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  const Positioned(
                      top: 5,
                      left: 90,
                      child: Center(
                        child: Text(
                          'Pepperoni Pizza',
                          textAlign: TextAlign.right,
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                      )),
                  const Positioned(
                      top: 25,
                      left: 70,
                      child: Center(
                        child: Text(
                          'Hot pizza with peper',
                          textAlign: TextAlign.right,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                        ),
                      )),
                  const Positioned(
                    top: 65,
                    left: 50,
                    child: Image(
                      image: AssetImage('lib/assets/images/pizza.png'),
                      width: 190,
                      height: 190,
                    ),
                  ),
                  const Positioned(
                      bottom: 20,
                      left: 115,
                      child: Center(
                        child: Text(
                          'Made by',
                          textAlign: TextAlign.right,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                        ),
                      )),
                  const Positioned(
                      bottom: 5,
                      left: 50,
                      child: Center(
                        child: Text(
                          'Edlin Paola Velázquez Salas',
                          textAlign: TextAlign.right,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                          ),
                        ),
                      )),
                ],
              ),
            ),
          ),
          Container(
            width: double.infinity,
            padding: const EdgeInsets.only(left: 20, right: 20, bottom: 10),
            child: const Text(
              'Sizes',
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: const [
              Cuadrito(color: Colors.white, text: 'S'),
              Cuadrito(color: Colors.yellow, text: 'M'),
              Cuadrito(color: Colors.white, text: 'L'),
              Cuadrito(color: Colors.white, text: 'XL'),
            ],
          ),
          Container(
            width: double.infinity,
            padding:
                const EdgeInsets.only(top: 10, bottom: 10, left: 20, right: 20),
            child: const Text(
              'Ingredients',
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: const [
              CuadroImagen(
                  color: Colors.white,
                  text: 'lib/assets/images/ingredient1.png'),
              CuadroImagen(
                  color: Colors.white,
                  text: 'lib/assets/images/ingredient2.png'),
              CuadroImagen(
                  color: Colors.yellow,
                  text: 'lib/assets/images/ingredient3.png'),
              CuadroImagen(
                  color: Colors.white,
                  text: 'lib/assets/images/ingredient4.png'),
            ],
          ),
          Container(
              padding: const EdgeInsets.all(15),
              child: ElevatedButton(
                onPressed: () {},
                style: const ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(
                        Color.fromARGB(255, 191, 214, 191))),
                child: const Text(
                  'Buy now',
                  style: TextStyle(color: Colors.green),
                ),
              ))
        ],
      ),
    );
  }
}

class Cuadrito extends StatelessWidget {
  final Color color;
  final String text;
  const Cuadrito({super.key, required this.color, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 30,
      height: 30,
      decoration: BoxDecoration(
          color: color,
          border: const Border(
              bottom: BorderSide(style: BorderStyle.solid),
              top: BorderSide(style: BorderStyle.solid),
              left: BorderSide(style: BorderStyle.solid),
              right: BorderSide(style: BorderStyle.solid)),
          borderRadius: const BorderRadius.only(
              bottomRight: Radius.circular(5),
              bottomLeft: Radius.circular(5),
              topLeft: Radius.circular(5),
              topRight: Radius.circular(5))),
      child: Center(
          child: Text(text,
              textAlign: TextAlign.center,
              style:
                  const TextStyle(fontSize: 12, fontWeight: FontWeight.bold))),
    );
  }
}

class CuadroImagen extends StatelessWidget {
  final Color color;
  final String text;
  const CuadroImagen({super.key, required this.color, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 30,
      height: 30,
      decoration: BoxDecoration(
          color: color,
          border: const Border(
              bottom: BorderSide(style: BorderStyle.solid),
              top: BorderSide(style: BorderStyle.solid),
              left: BorderSide(style: BorderStyle.solid),
              right: BorderSide(style: BorderStyle.solid)),
          borderRadius: const BorderRadius.only(
              bottomRight: Radius.circular(5),
              bottomLeft: Radius.circular(5),
              topLeft: Radius.circular(5),
              topRight: Radius.circular(5))),
      child: Center(
          child: Image(
        image: AssetImage(text),
        width: 25,
        height: 25,
      )),
    );
  }
}
