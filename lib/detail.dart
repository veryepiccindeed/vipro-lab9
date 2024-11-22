import 'package:flutter/material.dart';

class DetailScreen extends StatefulWidget {
  final String imagePath;
  final String title;
  final String subtitle;

  const DetailScreen({
    super.key,
    required this.imagePath,
    required this.title,
    required this.subtitle,
  });

  @override
    State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  int _quantity = 1; // Default quantity is 1

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          color: Colors.white,
          onPressed: () {
            Navigator.pop(context); // Navigate back to the previous screen
          },
        ),
        title: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: SizedBox(
            height: 40,
            child: TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                hintText: 'Chicken Smackdown Bu Ratna...',
                prefixIcon: const Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                  borderSide: BorderSide.none,
                ),
                contentPadding: const EdgeInsets.symmetric(vertical: 0, horizontal: 12),
              ),
            ),
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.account_circle, size: 40.0),
            color: Colors.white,
            onPressed: () {
              // Implement action for profile icon
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Banner Image
              ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Image.asset(
                  widget.imagePath, // Gambar yang dikirim dari card
                  width: double.infinity,
                  height: 250,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(height: 16.0),

              // Warung Name and Information
              const Text(
                'Warung Ayam Geprek Prek Prek',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Poppins',
                ),
              ),
              const SizedBox(height: 8.0),
              const Text(
                'Ayam Geprek Sambal Terasi', // Menggunakan nama dari card
                style: TextStyle(fontSize: 16, fontFamily: 'Poppins',),
              ),
              const SizedBox(height: 4.0),
              const Text(
                'Alamat: Jalan Raya No. 123, Kota XYZ',
                style: TextStyle(fontSize: 16, fontFamily: 'Poppins',),
              ),
              const SizedBox(height: 4.0),
              const Text(
                'Rating: 4.5/5',
                style: TextStyle(fontSize: 16, fontFamily: 'Poppins',),
              ),
              const SizedBox(height: 32.0),

              // Quantity Selector and Order Button
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Quantity Selector (Plus/Minus buttons)
                  Row(
                    children: [
                      IconButton(
                        icon: const Icon(Icons.remove),
                        onPressed: () {
                          setState(() {
                            if (_quantity > 1) {
                              _quantity--;
                            }
                          });
                        },
                      ),
                      Text(
                        '$_quantity',
                        style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      IconButton(
                        icon: const Icon(Icons.add),
                        onPressed: () {
                          setState(() {
                            _quantity++;
                          });
                        },
                      ),
                    ],
                  ),

                  // Elevated Button for Ordering
                  ElevatedButton(
                    onPressed: () {
                      // Implement order action
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            title: const Text('Pesanan Anda'),
                            content: Text('Anda memesan $_quantity ${widget.title}'),
                            actions: [
                              TextButton(
                                onPressed: () {
                                  Navigator.of(context).pop(); // Close the dialog
                                },
                                child: const Text('Tutup'),
                              ),
                            ],
                          );
                        },
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.orange,
                      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                      textStyle: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    child: const Text('Pesan'),
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
