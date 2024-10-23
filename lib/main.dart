import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Dessert Recipe'),
        ),
        body: SingleChildScrollView(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              // Columna para el texto
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    // Contenedor para el título
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black, width: 2.0),
                        color: const Color.fromARGB(255, 164, 241, 255),
                      ),
                      child: const Center(
                        child: Text(
                          'Strawberry Pavlova',
                          style: TextStyle(
                              fontSize: 28, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    // Contenedor con la descripción
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black, width: 2.0),
                        color: const Color.fromARGB(255, 164, 241, 255),
                      ),
                      child: const Text(
                        'Pavlova is a meringue-based dessert named after the Russian ballerina Anna Pavlova. '
                        'It features a crisp crust and soft, light inside, topped with fruit and whipped cream.',
                        textAlign: TextAlign.center,
                      ),
                    ),
                    const SizedBox(height: 10),
                    // Contenedor para las estrellas
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black, width: 2.0),
                        color: const Color.fromARGB(255, 164, 241, 255),
                      ),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.star, color: Colors.black),
                          Icon(Icons.star, color: Colors.black),
                          Icon(Icons.star, color: Colors.black),
                          Icon(Icons.star, color: Colors.black),
                          Icon(Icons.star, color: Colors.black),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 16), // Espacio entre el texto y la imagen
              // Contenedor para la imagen local
              Container(
                width: 150, 
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black, width: 2.0),
                  color: const Color.fromARGB(255, 164, 241, 255),
                ),
                child: const Image(
                  image: AssetImage('assets/images/strawberry.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}