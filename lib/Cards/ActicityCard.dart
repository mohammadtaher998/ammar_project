import 'package:ammar_project/customDesign/CarouselSlider.dart';
import 'package:flutter/material.dart';

class ActivityCard extends StatelessWidget {
  final List<String> images; // List of images for the carousel
  final String title; // Card title
  final String subtitle; // Card subtitle

  const ActivityCard({
    required this.images,
    required this.title,
    required this.subtitle,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      elevation: 5,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Image carousel at the top
          CarouselSlider(
            images: images,
            displayTime: 3.0, // Image transition every 3 seconds
            imageWidth: double.infinity,
            imageHeight: 120.0, // Adjusted height for smaller cards
          ),
          // Title, subtitle, and button section
          Padding(
            padding: const EdgeInsets.all(2.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Text section with title and subtitle
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Title (Activity Name)
                      Text(
                        title,
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                        maxLines: 1,
                      ),
                      // Subtitle (Location)
                      Text(
                        subtitle,
                        style: const TextStyle(
                          color: Colors.grey,
                          fontSize: 8,
                        ),
                        maxLines: 1,
                      ),
                    ],
                  ),
                ),
                // Book Now button
                Align(
                  alignment: Alignment.bottomRight,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    child: const Text('book',style: TextStyle(fontSize: 12,color: Colors.white),),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
