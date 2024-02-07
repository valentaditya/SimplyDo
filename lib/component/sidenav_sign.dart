import 'package:flutter/material.dart';

void main() {
  runApp(const CardExamplesApp());
}

class CardExamplesApp extends StatelessWidget {
  const CardExamplesApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorSchemeSeed: const Color(0xff6750a4),
        useMaterial3: true,
      ),
      home: Scaffold(
        appBar: AppBar(title: const Text('Card Examples')),
        body: Align(
          alignment: Alignment.centerRight,
          child: ElevatedCardExample(),
        ),
      ),
    );
  }
}

class ElevatedCardExample extends StatelessWidget {
  const ElevatedCardExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: SizedBox(
        width: 200,
        height: 775,
        child: Stack(
          children: [
            Positioned(
              top: 60,
              left: 20,
              child: SizedBox(
                width: 170,
                height: 170,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(200),
                  child: Image.asset(
                    'lib/images/Avatar.png',
                    width: 170,
                    height: 170,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Positioned(
              top: 250,
              left: 50,
              child: SizedBox(
                width: 128,
                height: 30,
                child: Text(
                  'Katherine V.',
                  style: TextStyle(
                    fontFamily: 'Manrope',
                    fontSize: 22,
                    fontWeight: FontWeight.w500,
                    letterSpacing: 0,
                    color: Colors.black, // Sesuaikan warna sesuai kebutuhan
                  ),
                ),
              ),
            ),
            Positioned(
              top: 300,
              left: 20,
              child: SizedBox(
                height: 25,
                child: Row(
                  children: [
                    Image.asset(
                      'lib/images/User.png',
                      width: 25,
                      height: 25,
                      fit: BoxFit.cover,
                    ),
                    SizedBox(width: 10),
                    Text(
                      'User',
                      style: TextStyle(
                        fontFamily: 'Manrope',
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        letterSpacing: 0,
                        color: Colors.black, // Sesuaikan warna sesuai kebutuhan
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              top: 340,
              left: 20,
              child: SizedBox(
                height: 25,
                child: Row(
                  children: [
                    Image.asset(
                      'lib/images/Translate.png',
                      width: 25,
                      height: 25,
                      fit: BoxFit.cover,
                    ),
                    SizedBox(width: 10),
                    Text(
                      'Language',
                      style: TextStyle(
                        fontFamily: 'Manrope',
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        letterSpacing: 0,
                        color: Colors.black, // Sesuaikan warna sesuai kebutuhan
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              top: 380,
              left: 20,
              child: SizedBox(
                height: 25,
                child: Row(
                  children: [
                    Image.asset(
                      'lib/images/Layout.png',
                      width: 25,
                      height: 25,
                      fit: BoxFit.cover,
                    ),
                    SizedBox(width: 10),
                    Text(
                      'Theme',
                      style: TextStyle(
                        fontFamily: 'Manrope',
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        letterSpacing: 0,
                        color: Colors.black, // Sesuaikan warna sesuai kebutuhan
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              top: 420,
              left: 20,
              child: SizedBox(
                height: 25,
                child: Row(
                  children: [
                    Image.asset(
                      'lib/images/Swap.png',
                      width: 25,
                      height: 25,
                      fit: BoxFit.cover,
                    ),
                    SizedBox(width: 10),
                    Text(
                      'Swap Account',
                      style: TextStyle(
                        fontFamily: 'Manrope',
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        letterSpacing: 0,
                        color: Colors.black, // Sesuaikan warna sesuai kebutuhan
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              top: 470,
              left: 20,
              right: 15,
              child: SizedBox(
                width: 210,
                height: 40,
                child: ElevatedButton(
                  onPressed: () {
                    // Tindakan yang akan dilakukan ketika tombol ditekan
                  },
                  child: Text(
                    'Sign Out',
                    style: TextStyle(color: Colors.white),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xFF44C4A1),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
