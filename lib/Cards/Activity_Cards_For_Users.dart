import 'package:ammar_project/customDesign/CarouselSlider.dart';
import 'package:flutter/material.dart';

class ActivityCardsForUsers extends StatelessWidget {
  final List<String> images; // List of images for the carousel
  final String title; // Card title
  final String subtitle; // Card subtitle

  const ActivityCardsForUsers({
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
            imageHeight: 150.0, // Fixed height for the carousel
          ),
          // Title, subtitle, and button section
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Title and subtitle
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Title (Activity Name)
                      Text(
                        title,
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 4), // Space between title and subtitle
                      // Subtitle (Location)
                      Text(
                        subtitle,
                        style: const TextStyle(
                          color: Colors.grey,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                ),
                // "Book Now" button
                ElevatedButton(
                  onPressed: () {
                    // Add booking functionality here
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    padding: const EdgeInsets.symmetric(
                      horizontal: 12.0,
                      vertical: 8.0,
                    ),
                  ),
                  child: const Text(
                    'Book Now',
                    style: TextStyle(color: Colors.white, fontSize: 14),
                    textAlign: TextAlign.center, // Ensures text is centered
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
