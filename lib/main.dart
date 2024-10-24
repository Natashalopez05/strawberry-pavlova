import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: const Icon(Icons.food_bank, color: Color.fromARGB(255, 8, 8, 8)),
          title: const Text('Recetas')
          
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
                        border: Border.all(color:  const Color.fromARGB(255, 78, 73, 73), width: 2.0),
                        color: const Color.fromARGB(255, 216, 238, 241),
                      ),
                      child: const Center(
                        child: Text(
                          'Strawberry Pavlova',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold,
                              fontFamily: 'Roboto',
                              letterSpacing: 0.5,
                              color:  Color.fromARGB(255, 78, 73, 73),
                          ),

                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    // Contenedor con la descripción
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(color:  const Color.fromARGB(255, 78, 73, 73), width: 2.0),
                        color: const Color.fromARGB(255, 216, 238, 241),
                      ),
                      child: const Text(
                        'Pavlova is a meringue-based dessert named after the Russian ballerina Anna Pavlova. '
                        'It features a crisp crust and soft, light inside, topped with fruit and whipped cream.',
                        style: TextStyle(
                          color:  Color.fromARGB(255, 78, 73, 73),
                          fontWeight: FontWeight.normal,
                          fontFamily: 'Roboto',
                          letterSpacing: 0.5,
                          fontSize: 15,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    const SizedBox(height: 10),
                    // Contenedor para las estrellas
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black, width: 2.0),
                        color: const Color.fromARGB(255, 216, 238, 241),
                      ),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.star, color: Color.fromARGB(255, 78, 73, 73)),
                          Icon(Icons.star, color: Color.fromARGB(255, 78, 73, 73)),
                          Icon(Icons.star, color: Color.fromARGB(255, 78, 73, 73)),
                          Icon(Icons.star, color: Color.fromARGB(255, 78, 73, 73)),
                          Icon(Icons.star, color: Color.fromARGB(255, 78, 73, 73)),

                          const Text(
                          '170 Reviews',
                          style: TextStyle(
                            color:  Color.fromARGB(255, 78, 73, 73),
                            fontWeight: FontWeight.normal,
                            fontFamily: 'Roboto',
                            letterSpacing: 0.5,
                            fontSize: 15,
                          ),
                        ),
                        ],
                        
                      ),
                    ),
                    
                    const SizedBox(height: 10),
                    
                    Container(
                    
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black, width: 2.0),
                        color: const Color.fromARGB(255, 216, 238, 241),
                      ),
                      child: Container(
                        padding: const EdgeInsets.all(20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Column(
                              children: [
                                Icon(Icons.kitchen, color: Colors.green[500]),
                                const Text('PREP:'),
                                const Text('25 min'),
                              ],
                            ),
                            Column(
                              children: [
                                Icon(Icons.timer, color: Colors.green[500]),
                                const Text('COOK:'),
                                const Text('1 hr'),
                              ],
                            ),
                            Column(
                              children: [
                                Icon(Icons.restaurant, color: Colors.green[500]),
                                const Text('FEEDS:'),
                                const Text('4-6'),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    
                    
                  ],
                ),
              ),
              const SizedBox(width: 16), // Espacio entre el texto y la imagen
              // Contenedor para la imagen local
              Expanded(
                child: Container(
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
              )
              
            ],
          ),
        ),
      ),
    );
  }
}