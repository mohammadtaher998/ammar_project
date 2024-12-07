import 'package:ammar_project/customDesign/Test_Bar.component.dart';
import 'package:flutter/material.dart';

class ActivityCard extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String subtitle;
  final VoidCallback onTap; // Added a callback for the click event

  const ActivityCard({
    super.key,
    required this.imageUrl,
    required this.title,
    required this.subtitle,
    required this.onTap, // Initialize the onTap callback
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Card(
        child: Builder(builder: (context) {
          return Container(
            width: MediaQuery.of(context).size.width / 2,
            height: 150,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15.0),
              image: DecorationImage(
                image: NetworkImage(imageUrl),
                fit: BoxFit.cover,
              ),
            ),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.5),
                borderRadius: BorderRadius.circular(15.0),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomTextCard(text: title, fontSize: 16),
                    CustomTextCard(text: subtitle, fontSize: 14),
                  ],
                ),
              ),
            ),
          );
        }),
      ),
    );
  }
}
