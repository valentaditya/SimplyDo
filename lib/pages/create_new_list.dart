import 'package:flutter/material.dart';
import '../pages/profil.dart';

class CreateNewList extends StatelessWidget {
  const CreateNewList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF5F5F5),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0, // No shadow
        leading: Row(
          children: [
            GestureDetector(
              onTap: () {
                Navigator.pop(
                    context); // Navigate back when the back button is tapped
              },
              child: Container(
                padding: const EdgeInsets.all(8.0),
                child: Icon(
                  Icons.arrow_back,
                  size: 22, // Set the size of the icon to match the text size
                ),
              ),
            ),
            SizedBox(
                width: 8), // Add spacing between the back button and the text
            Text(
              'Create a new to do list',
              style: TextStyle(
                fontFamily: 'ManropeSemiBold',
                fontSize: 22,
              ),
            ),
          ],
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.more_horiz),
            onPressed: () {
              // Handle overflow menu actions
            },
          ),
          IconButton(
            icon: Icon(Icons.person),
            onPressed: () {
              // Navigate to profile page when the profile button is pressed
              _profil(context);
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Replace existing content with the white box
            SizedBox(height: 30),
            Container(
              width: 390, // Set the width to 390
              height: 404, // Set the height to 404
              color: Colors.white, // Set the background color to white

              child: Align(
                // Use Align to position the text
                alignment: Alignment.topLeft, // Set alignment to top-left
                child: Text(
                  'pak itu di pojok kanan form profile nanti saya benarkan itu hanya mempermudah liat form form nya banyak bugpak saya janji saya akan benarkan',
                  style: TextStyle(
                    fontFamily: 'Manrope',
                    fontSize: 18,
                  ),
                ),
              ),
            ),

            // Search Bar (... remains the same)
          ],
        ),
      ),
    );
  }

  void _profil(BuildContext context) {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => MyApp()));
  }
}
