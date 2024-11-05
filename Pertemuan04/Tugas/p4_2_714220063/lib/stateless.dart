import 'package:flutter/material.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

   @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Tugas Pertemuan 4',
            style: TextStyle(color: Colors.white),
            ),
           backgroundColor: Colors.amber[900],
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 300,
                height: 120,
                color: Colors.blue,
                child: const Center(
                  child: Text(
                    'Box 1',
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 100,
                    height: 200,
                    color: Colors.red,
                    child: const Center(
                      child: Text(
                        'Box 2',
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                    ),
                  ),
                  const SizedBox(width: 20),
                  Container(
                    width: 100,
                    height: 200,
                    color: Colors.green,
                    child: const Center(
                      child: Text(
                        'Box 3',
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}