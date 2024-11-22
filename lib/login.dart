import 'package:flutter/material.dart';
import 'onboard.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

 @override
  Widget build(BuildContext context) {
    return Scaffold(  
      body: Center(
        child: SizedBox(
          width: 250,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset(
                'assets/image/Gepregg.png', // Path gambar Anda
                width: 100,  // Ukuran gambar
                height: 100, // Ukuran gambar
              ),
              const SizedBox(height: 16),
              const TextField(
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Username',
                ),
              ),
              const SizedBox(height: 16),
              const TextField(
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Kata Sandi',
                ),
              ),
              const SizedBox(height: 12),
              OverflowBar(
                children: <Widget>[
              ElevatedButton(
                style: 
                ElevatedButton.styleFrom(
                elevation: 8.0, shape: const BeveledRectangleBorder(
                 borderRadius: BorderRadius.all(Radius.circular(6.0)),
                ),),
                onPressed: () {
               Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const OnboardPage()),
            );
                },
                child: const Text('Daftar'),
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