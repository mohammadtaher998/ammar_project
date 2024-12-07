import 'package:flutter/material.dart';

class Most_Public_Activity_card extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String subtitle;
  final String time;
  final VoidCallback onTap;

  const Most_Public_Activity_card({
    super.key,
    required this.imageUrl,
    required this.title,
    required this.subtitle,
    required this.time,
    required this.onTap, // onTap callback
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap, // Trigger onTap when the card is tapped
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 2.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.0),
          image: DecorationImage(
            image: NetworkImage(imageUrl),
            fit: BoxFit.cover,
          ),
        ),
        width: 300, // Adjust width as needed
        height: 150, // Adjust height as needed
        child: Stack(
          children: [
            // Overlay to darken the image for text readability
            Container(
              decoration: BoxDecoration(
                color: 
                    Colors.black.withOpacity(0.5),
                borderRadius: BorderRadius.circular(15.0),
              ),
            ),
            // Text Content
            Positioned(
              bottom: 10,
              right: 35,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    subtitle,
                    style: const TextStyle(
                      color: Colors.white70,
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    time,
                    style: const TextStyle(
                      color: Colors.white70,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}