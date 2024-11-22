import 'package:flutter/material.dart';
import 'katalog.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';


class OnboardPage extends StatefulWidget {
  const OnboardPage({super.key});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".


  @override
  State<OnboardPage> createState() => _MyOnboard();
}

class _MyOnboard extends State<OnboardPage> {
  final PageController _controller = PageController();

   @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
        Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // PageView untuk halaman onboarding
            Expanded(
              child: PageView(
                controller: _controller,
                children: [
                  // Halaman pertama onboarding
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/image/Gepregg.png', // Path gambar
                        width: 100,
                        height: 100,
                      ),
                      const SizedBox(height: 16),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 32.0), // Membatasi lebar teks
                        child: Text(
                        'SELAMAT DATANG DI GEPREGG!',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Poppins',
                        ),
                       ),
                      ),
                       const SizedBox(height: 16),
                       const Padding(
                       padding: EdgeInsets.symmetric(horizontal: 32.0),
                       child: Text(
                        'Surga bagi para pecinta ayam geprek (geprek ya, bukan kampus) :)',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w100,
                          fontFamily: 'Poppins',
                        ),
                       ),
                      ),
                    ],
                  ),
                  // Halaman kedua onboarding
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/image/endorsement-icon.png', // Path gambar
                        width: 100,
                        height: 100,
                      ),
                      const SizedBox(height: 16),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 32.0), // Membatasi lebar teks
                        child: Text(
                        'TEMUKAN BERBAGAI VARIAN AYAM GEPREK',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Poppins',
                          ),
                        ),
                      ),
                       const SizedBox(height: 16),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 32.0), // Membatasi lebar teks
                        child: Text(
                        'Nikmati restoran - restoran terbaik yang menyajikan hidangan ayam geprek dengan cita rasa khas',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w100,
                          fontFamily: 'Poppins',
                          ),
                        ),
                      ),
                    ],
                  ),
                  // Halaman ketiga onboarding
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/image/cateringemas.png', // Path gambar
                        width: 100,
                        height: 100,
                      ),
                      const SizedBox(height: 16),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 32.0), // Membatasi lebar teks
                        child: Text(
                        'SIKAAAT!!!',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Poppins',
                        ),
                      ),
                      ),
                      const SizedBox(height: 16),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 32.0), // Membatasi lebar teks
                        child: Text(
                        'Mulai pesan pertama Anda sekarang dan rasakan pedasnya!',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w100,
                          fontFamily: 'Poppins',
                        ),
                      ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            // Page Indicator (lingkaran kecil di bawah)
              SmoothPageIndicator(
                controller: _controller,
                count: 3,
                effect: const WormEffect(
                  dotWidth: 8.0,
                  dotHeight: 8.0,
                  spacing: 16.0,
                  dotColor: Colors.grey,
                  activeDotColor: Colors.orange,
                ),
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.only(right: 16.0, bottom: 16.0),
                child: Align(
                  alignment: Alignment.bottomRight,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      elevation: 8.0, shape: const BeveledRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(6.0)),
                      ),),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const Katalog()),
                      );
                    },
                    child: const Text('Mulai'),
                  ),
                ),
              ),
            ],
          ),
        ),
        // Tombol back di pojok kiri atas
        Positioned(
          top: 32.0, // Jarak dari atas
          left: 16.0, // Jarak dari kiri
          child: IconButton(
            icon: const Icon(Icons.arrow_back, color: Colors.black),
            onPressed: () {
              Navigator.pop(context); // Kembali ke halaman sebelumnya
            },
          ),
        ),
      ],
    ),
  );
}
}