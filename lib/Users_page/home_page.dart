import 'package:ammar_project/Cards/ActivityCardsForUsers.dart';
import 'package:ammar_project/Pages/BookingsScreen.dart';
import 'package:ammar_project/Pages/ClientReview.dart';
import 'package:ammar_project/Pages/ListOfCLient.dart';
import 'package:ammar_project/customDesign/CustomButton.dart';
import 'package:ammar_project/Cards/CustomCard.dart';
import 'package:flutter/material.dart';
import 'package:ammar_project/Pages/CreateNewActivity.dart';

class home_page extends StatefulWidget {
  @override
  _home_page createState() => _home_page();
}

class _home_page extends State<home_page> {
  int notificationCount = 0;

  void _incrementNotification() {
    setState(() {
      notificationCount += 1;
    });
  }

  void _resetNotification() {
    setState(() {
      notificationCount = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20), // Adding space at the top of the screen
            // Profile and Notifications Row
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CircleAvatar(
                  radius: 20,
                  backgroundImage: AssetImage('assets/profile_image.png'), // Replace with actual image asset or network image
                  child: Icon(Icons.person, color: Colors.white), // Fallback icon if no image
                ),
                Stack(
                  children: [
                    IconButton(
                      icon: Icon(Icons.notifications, color: Colors.black),
                      iconSize: 30,
                       // Notification bell icon
                      onPressed: _resetNotification,
                    ),
                    if (notificationCount > 0)
                      Positioned(
                        right: 11,
                        top: 11,
                        child: Container(
                          padding: EdgeInsets.all(2),
                          decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          constraints: BoxConstraints(
                            minWidth: 16,
                            minHeight: 16,
                          ),
                          child: Text(
                            '$notificationCount',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 10),

            // Search Bar
            TextField(
              decoration: InputDecoration(
                hintText: "What are you looking for?",
                prefixIcon: Icon(Icons.search, color: Colors.grey),
                filled: true,
                fillColor: Colors.grey[200],
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
                         const SizedBox(height: 10),
ActivityCardsForUsers(
          images: [
            'https://firebasestorage.googleapis.com/v0/b/gojo-s.appspot.com/o/Aqaba%2FAqaba%2Faqaba_a.jpg?alt=media&token=83bd506f-9e8e-4a0d-8dfe-3affe9bb2971', // Replace with actual image URLs
            'https://firebasestorage.googleapis.com/v0/b/gojo-s.appspot.com/o/Aqaba%2FAqaba%2Faqaba.jpg?alt=media&token=648c0d8b-0a8c-471f-84bb-7675879bb238',
          ],
          title: 'Aqua Park for Kids',
          subtitle: 'Saudi Arabia - Al Riyadh',
        ),
             
      ]
      )
      ),
    );
  }

  Widget _buildAnalysisCard(String value, String description) {
    return Expanded(
      child: Card(
        elevation: 2,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Text(
                value,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                  color: Colors.red,
                ),
              ),
              const SizedBox(height: 5),
              Text(
                description,
                style: TextStyle(color: Colors.grey[600], fontSize: 8),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

