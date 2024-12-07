import 'package:ammar_project/Cards/Acticity_Card.dart';
import 'package:ammar_project/Cards/Activity_Cards_For_Users.dart';
import 'package:flutter/material.dart';
import 'package:ammar_project/customDesign/CarouselSlider.dart';

class ActivityCardsForUsersn extends StatelessWidget {
  final List<Map<String, dynamic>> activities = [
    {
      'images':
          'https://firebasestorage.googleapis.com/v0/b/gojo-s.appspot.com/o/Aqaba%2FAqaba%2Faqaba_a.jpg?alt=media&token=83bd506f-9e8e-4a0d-8dfe-3affe9bb2971',
      'title': 'Aqua Park for Kids',
      'subtitle': 'Saudi Arabia - Al Riyadh',
    },
    {
      'images':
          'https://firebasestorage.googleapis.com/v0/b/gojo-s.appspot.com/o/Aqaba%2FAqaba%2Faqaba_a.jpg?alt=media&token=83bd506f-9e8e-4a0d-8dfe-3affe9bb2971',
      'title': 'Adventure Park',
      'title': 'Aqua Park for Kids',
      'subtitle': 'Dubai - UAE',
    },
    {
      'images':
          'https://firebasestorage.googleapis.com/v0/b/gojo-s.appspot.com/o/Aqaba%2FAqaba%2Faqaba_a.jpg?alt=media&token=83bd506f-9e8e-4a0d-8dfe-3affe9bb2971',
      'title': 'Fun Land',
      'title': 'Aqua Park for Kids',
      'subtitle': 'Jordan - Amman',
    },
    {
      'images':
          'https://firebasestorage.googleapis.com/v0/b/gojo-s.appspot.com/o/Aqaba%2FAqaba%2Faqaba_a.jpg?alt=media&token=83bd506f-9e8e-4a0d-8dfe-3affe9bb2971',
      'title': 'City Zoo',
      'subtitle': 'India - Mumbai',
    },
    {
      'images':
          'https://firebasestorage.googleapis.com/v0/b/gojo-s.appspot.com/o/Aqaba%2FAqaba%2Faqaba_a.jpg?alt=media&token=83bd506f-9e8e-4a0d-8dfe-3affe9bb2971',
      'title': 'Water World',
      'title': 'Aqua Park for Kids',
      'subtitle': 'UK - London',
    },
    {
      'images':
          'https://firebasestorage.googleapis.com/v0/b/gojo-s.appspot.com/o/Aqaba%2FAqaba%2Faqaba_a.jpg?alt=media&token=83bd506f-9e8e-4a0d-8dfe-3affe9bb2971',
      'title': 'Snow Park',
      'title': 'Aqua Park for Kids',
      'subtitle': 'Canada - Toronto',
    },
    {
      'images':
          'https://firebasestorage.googleapis.com/v0/b/gojo-s.appspot.com/o/Aqaba%2FAqaba%2Faqaba_a.jpg?alt=media&token=83bd506f-9e8e-4a0d-8dfe-3affe9bb2971',
      'title': 'Desert Safari',
      'title': 'Aqua Park for Kids',
      'subtitle': 'UAE - Abu Dhabi',
    },
    {
      'images':
          'https://firebasestorage.googleapis.com/v0/b/gojo-s.appspot.com/o/Aqaba%2FAqaba%2Faqaba_a.jpg?alt=media&token=83bd506f-9e8e-4a0d-8dfe-3affe9bb2971',
      'title': 'Forest Adventure',
      'title': 'Aqua Park for Kids',
      'subtitle': 'USA - California',
    },
  ];

 ActivityCardsForUsersn({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    int crossAxisCount = (screenWidth / 200).floor();
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
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
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: GridView.builder(
                  physics: const BouncingScrollPhysics(),
                  shrinkWrap: true,
                  gridDelegate:  SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: crossAxisCount,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    childAspectRatio: 1,
                  ),
                  itemCount: activities.length,
                  itemBuilder: (context, index) {
                    final activity = activities[index];
                    return ActivityCard(
                      imageUrl: activity['images'],
                      title: activity['title'],
                      subtitle: activity['subtitle'],
                      onTap: () {},
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
