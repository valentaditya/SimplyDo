import 'package:flutter/material.dart';
import '../pages/login.dart';
import '../pages/login.dart';
import '../pages/register.dart';

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
      debugShowCheckedModeBanner: false, // Menghilangkan debug banner
      home: Scaffold(
        body:
            ElevatedCardExample(), // Menampilkan widget ElevatedCardExample secara langsung
      ),
    );
  }
}

class ElevatedCardExample extends StatelessWidget {
  const ElevatedCardExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // Menggunakan Container untuk mengatur margin dan padding
      margin: EdgeInsets.all(20), // Atur margin sesuai kebutuhan
      padding: EdgeInsets.all(20), // Atur padding sesuai kebutuhan
      child: Card(
        elevation: 0, // Menghilangkan bayangan (elevation) pada kartu
        color: Colors.transparent, // Menghilangkan warna latar belakang
        child: SizedBox(
          width: 200,
          height: 775,
          child: Stack(
            children: <Widget>[
              Positioned(
                top: 200,
                left: 50,
                child: SizedBox(
                  width: 100,
                  height: 100,
                  child: Image.asset('lib/images/Icon.png'),
                ),
              ),
              Positioned(
                top: 330,
                left: 20,
                right: 15,
                child: SizedBox(
                  width: 210,
                  height: 40,
                  child: ElevatedButton(
                    onPressed: () {
                      _keregister(
                          context); // Panggil fungsi untuk navigasi ke halaman login
                    },
                    child: Text(
                      'Register',
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
              Positioned(
                top: 380,
                left: 20,
                right: 15,
                child: SizedBox(
                  width: 210,
                  height: 40,
                  child: ElevatedButton(
                    onPressed: () {
                      _kelogin(
                          context); // Panggil fungsi untuk navigasi ke halaman login
                    },
                    child: Text(
                      'Sign In',
                      style: TextStyle(color: Color(0xFF44C4A1)),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4),
                        side: BorderSide(
                          color: Color(0xFF44C4A1),
                          width: 1,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 430,
                left: 20,
                right: 15,
                child: SizedBox(
                  width: 210,
                  height: 110,
                  child: Text(
                    'With registration, your created To Do List will be securely stored, ensuring that they will not be lost.',
                    style: TextStyle(
                      fontFamily: 'Manrope',
                      fontSize: 16,
                      height: 1.4,
                      color: Colors.black, // Ubah warna sesuai kebutuhan
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Fungsi untuk navigasi ke halaman login
  void _kelogin(BuildContext context) {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => LoginPage()));
  }

  void _keregister(BuildContext context) {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => RegisterPage()));
  }
}
