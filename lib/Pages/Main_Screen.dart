import 'package:ammar_project/Pages/Bookings_Screen.dart';
import 'package:ammar_project/Pages/Client_Review.dart';
import 'package:ammar_project/Pages/List_Of_CLient.dart';
import 'package:ammar_project/customDesign/Custom_Button.dart';
import 'package:ammar_project/Cards/Custom_Card.dart';
import 'package:flutter/material.dart';
import 'package:ammar_project/Pages/Create_New_Activity.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
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
            const SizedBox(height: 20), // Adding space at the top of the screen
            // Profile and Notifications Row
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const CircleAvatar(
                  radius: 20,
                  backgroundImage: AssetImage('assets/profile_image.png'), // Replace with actual image asset or network image
                  child: Icon(Icons.person, color: Colors.white), // Fallback icon if no image
                ),
                Stack(
                  children: [
                    IconButton(
                      icon: const Icon(Icons.notifications, color: Colors.black),
                      iconSize: 30,
                       // Notification bell icon
                      onPressed: _resetNotification,
                    ),
                    if (notificationCount > 0)
                      Positioned(
                        right: 11,
                        top: 11,
                        child: Container(
                          padding: const EdgeInsets.all(2),
                          decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          constraints: const BoxConstraints(
                            minWidth: 16,
                            minHeight: 16,
                          ),
                          child: Text(
                            '$notificationCount',
                            style: const TextStyle(
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
                prefixIcon: const Icon(Icons.search, color: Colors.grey),
                filled: true,
                fillColor: Colors.grey[200],
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
            const SizedBox(height: 20),

            // Analysis Section
            const Text(
              "Analysis",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buildAnalysisCard("1200", "New Bookings"),
                _buildAnalysisCard("80%", "Sales Rate"),
              ],
            ),
            const SizedBox(height: 20),

            // Manage Your Business Section
            const Text(
              "Manage your business",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 5), // Reduced space after Manage your business
            GridView.count(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              crossAxisCount: 2,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              children: [
                CustomCard(
                  title: "Business Profile",
                  description: "Customize your profile with photos, descriptions, and contact info to attract customers.",
                  icon: Icons.business,
                  onTap: (){},
                ),
                CustomCard(
                  title: "Bookings",
                  description: "Manage your bookings hassle-free, keeping your schedule organized and efficient.",
                  icon: Icons.book_online,
                  onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => BookingsScreen()));
                  },
                ),
                CustomCard(
                  title: "List of Clients",
                  description: "Keep track of customer information and preferences to provide personalized service.",
                  icon: Icons.people,
                  onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => ListOfCLient()));
                  },
                ),
                CustomCard(
                  title: "Client Reviews",
                  description: "Harness feedback. Monitor and respond to reviews, shaping your business and building trust.",
                  icon: Icons.rate_review,
                  onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => ClientReview()));
                  },
                ),
              ],
            ),
            const SizedBox(height: 20),

            // Create New Activity Button
            Center(
              child: CustomButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => CreateNewActivity()));
                },
                text: "Create new Activity",
                size: 18,
                bordercirclar: 40,
              ),
            ),
          ],
        ),
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
                style: const TextStyle(
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

