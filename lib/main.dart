import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'LDSW 3.4 Utilización de widgets',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Widgets básicos'),
          backgroundColor: Colors.deepPurple,
        ),
        body: const WidgetExamples(),
      ),
    );
  }
}

class WidgetExamples extends StatelessWidget {
  const WidgetExamples({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Título principal
          const Text(
            'LDSW 3.4 Utilización de widgets',
            style: TextStyle(
              fontSize: 26,
              fontWeight: FontWeight.bold,
              color: Colors.deepPurple,
            ),
          ),

          SizedBox(height: 10),

          const Text(
            'Esta aplicación demuestra el uso de los widgets básicos: Text, Row, Column, Stack y Container.',
            style: TextStyle(
              fontSize: 16,
              color: Colors.black87,
            ),
          ),

          SizedBox(height: 20),

          // Fila de íconos y texto
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: const [
              Column(
                children: [
                  Icon(Icons.favorite, color: Colors.pink),
                  Text('Favorito'),
                ],
              ),
              Column(
                children: [
                  Icon(Icons.star, color: Colors.amber),
                  Text('Estrella'),
                ],
              ),
              Column(
                children: [
                  Icon(Icons.thumb_up, color: Colors.blue),
                  Text('Like'),
                ],
              ),
            ],
          ),

          SizedBox(height: 20),

          // Columna de textos
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                'Elemento A',
                style: TextStyle(fontSize: 18),
              ),
              SizedBox(height: 8),
              Text(
                'Elemento B',
                style: TextStyle(fontSize: 18),
              ),
              SizedBox(height: 8),
              Text(
                'Elemento C',
                style: TextStyle(fontSize: 18),
              ),
            ],
          ),

          SizedBox(height: 20),

          // Stack de contenedores
          SizedBox(
            height: 180,
            width: double.infinity,
            child: Stack(
              children: [
                Container(
                  width: 180,
                  height: 180,
                  decoration: BoxDecoration(
                    color: Colors.blue.shade300,
                    borderRadius: BorderRadius.circular(16),
                  ),
                ),
                Positioned(
                  top: 30,
                  left: 30,
                  child: Container(
                    width: 120,
                    height: 120,
                    decoration: BoxDecoration(
                      color: Colors.red.shade300,
                      borderRadius: BorderRadius.circular(16),
                    ),
                  ),
                ),
                Positioned(
                  top: 60,
                  left: 60,
                  child: Container(
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(
                      color: Colors.yellow.shade300,
                      borderRadius: BorderRadius.circular(16),
                    ),
                  ),
                ),
              ],
            ),
          ),

          SizedBox(height: 20),

          // Container
          Container(
            padding: const EdgeInsets.all(20.0),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.green, Colors.lightGreenAccent],
              ),
              borderRadius: BorderRadius.circular(16.0),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.2),
                  blurRadius: 10,
                  offset: const Offset(0, 5),
                ),
              ],
            ),
            child: const Text(
              'Este es un Container decorado',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
