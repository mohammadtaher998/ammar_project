import 'package:ammar_project/Cards/ActicityCard.dart';
import 'package:ammar_project/Cards/ActivityCardsForUsers.dart';
import 'package:flutter/material.dart';
import 'package:ammar_project/customDesign/CarouselSlider.dart';

class ActivityCardsForUsersn extends StatelessWidget {
  final List<Map<String, dynamic>> activities = [
    {
      'images': ['https://example.com/image1.jpg'],
      'title': 'Aqua Park for Kids',
      'subtitle': 'Saudi Arabia - Al Riyadh',
    },
    {
      'images': ['https://example.com/image2.jpg'],
      'title': 'Adventure Park',
      'subtitle': 'Dubai - UAE',
    },
    {
      'images': ['https://example.com/image3.jpg'],
      'title': 'Fun Land',
      'subtitle': 'Jordan - Amman',
    },
    {
      'images': ['https://example.com/image4.jpg'],
      'title': 'City Zoo',
      'subtitle': 'India - Mumbai',
    },
    {
      'images': ['https://example.com/image5.jpg'],
      'title': 'Water World',
      'subtitle': 'UK - London',
    },
    {
      'images': ['https://example.com/image6.jpg'],
      'title': 'Snow Park',
      'subtitle': 'Canada - Toronto',
    },
    {
      'images': ['https://example.com/image7.jpg'],
      'title': 'Desert Safari',
      'subtitle': 'UAE - Abu Dhabi',
    },
    {
      'images': ['https://example.com/image8.jpg'],
      'title': 'Forest Adventure',
      'subtitle': 'USA - California',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Activities'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, // Number of items per row
            crossAxisSpacing: 10, // Horizontal spacing between cards
            mainAxisSpacing: 10, // Vertical spacing between rows
            childAspectRatio: 0.75, // Adjust card height-to-width ratio
          ),
          itemCount: activities.length, // Total number of activities
          itemBuilder: (context, index) {
            final activity = activities[index];
            return ActivityCard(
              images: activity['images'],
              title: activity['title'],
              subtitle: activity['subtitle'],
            );
          },
        ),
      ),
    );
  }
}

