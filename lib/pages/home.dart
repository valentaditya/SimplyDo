import 'package:flutter/material.dart';
import 'package:simply_do/pages/create_new_list.dart';
import '../component/menubar.dart';
import '../component/sidenav_notsign.dart'; // Import file sidenav_notsign.dart

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Color textColor = Color(0xFF343434);
    Color placeholderColor = textColor.withOpacity(0.5);

    return Scaffold(
      backgroundColor: Color(0xFFF5F5F5),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        // leading: IconButton(
        //   icon: Icon(Icons.menu),
        //   onPressed: () {
        //     Scaffold.of(context).openDrawer();
        //   },
        // ),
        title: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 8.0, top: 16.0, bottom: 8.0),
              child: Image.asset(
                'lib/images/LogoSimplyDoVector.jpg',
                height: 30,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0, top: 16.0, bottom: 8.0),
              child: Image.asset(
                'lib/images/SimplyDo.png',
                height: 50,
              ),
            ),
          ],
        ),
        actions: [
          Builder(
            builder: (context) => IconButton(
              icon: Icon(Icons.menu),
              onPressed: () {
                Scaffold.of(context)
                    .openEndDrawer(); // Membuka drawer di sebelah kanan
              },
            ),
          ),
        ],
      ),
      endDrawer: Drawer(
        child:
            CardExamplesApp(), // Gunakan widget dari sidenav_notsign.dart di sini
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                // Search Bar
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6),
                    border: Border.all(color: Colors.black, width: 2),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: TextFormField(
                      style: TextStyle(
                        fontFamily: 'Manrope',
                        fontWeight: FontWeight.normal,
                        fontSize: 16.0,
                        color: textColor,
                      ),
                      decoration: InputDecoration(
                        hintText: 'Search your To-Do here',
                        hintStyle: TextStyle(
                          fontFamily: 'Manrope',
                          fontWeight: FontWeight.normal,
                          fontSize: 16.0,
                          color: placeholderColor,
                        ),
                        border: InputBorder.none,
                        suffixIcon: Icon(Icons.search),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20),
              ],
            ),
            Positioned(
              top: 50,
              left: 0,
              right: 0,
              child: Align(
                alignment: Alignment.center,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(height: 200),
                    Text(
                      "You haven’t made anything",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: 'ManropeSemiBold',
                        fontSize: 22,
                      ),
                    ),
                    SizedBox(height: 3),
                    Text(
                      "Let's create a new one",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: 'ManropeSemiBold',
                        fontSize: 16,
                        color: textColor,
                      ),
                    ),
                    SizedBox(height: 10),
                    Container(
                      width: 305,
                      height: 40,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            _createRoute(),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Color(0xFF44C4A1),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(4),
                          ),
                        ),
                        child: Text(
                          "Create new list",
                          style: TextStyle(
                            fontFamily: 'ManropeBold',
                            fontSize: 22,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

PageRouteBuilder _createRoute() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => CreateNewList(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      const begin = 0.0;
      const end = 1.0;
      const curve = Curves.easeInOutQuart;

      var fadeTween =
          Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
      var scaleTween =
          Tween(begin: 0.5, end: 1.0).chain(CurveTween(curve: curve));

      var fadeAnimation = animation.drive(fadeTween);
      var scaleAnimation = animation.drive(scaleTween);

      return FadeTransition(
        opacity: fadeAnimation,
        child: ScaleTransition(
          scale: scaleAnimation,
          child: child,
        ),
      );
    },
  );
}
