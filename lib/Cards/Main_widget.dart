import 'package:ammar_project/customDesign/Test_Bar.component.dart';
import 'package:flutter/material.dart';

class MainActivityCard extends StatelessWidget {
  final String title;
  final List<Map<String, String>> items;

  const MainActivityCard({
    super.key,
    required this.title,
    required this.items,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 6.0),
          child: Text(
            title,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        const SizedBox(height: 10),
        SizedBox(
          height: 150,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: items.length,
            itemBuilder: (context, index) {
              final item = items[index];
              return _buildCard(
                imageUrl: item['imageUrl']!,
                title: item['title']!,
                subtitle: item['subtitle']!,
                time: item['time']!,
              );
            },
          ),
        ),
      ],
    );
  }

  Widget _buildCard({
    required String imageUrl,
    required String title,
    required String subtitle,
    required String time,
  }) {
    return Card(
      child: Builder(builder: (context) {
        return Container(
          width: 200,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15.0),
            image: DecorationImage(
              image: NetworkImage(imageUrl),
              fit: BoxFit.cover,
            ),
          ),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.black.withOpacity(0.8),
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
                  CustomTextCard(text: time, fontSize: 10),
                ],
              ),
            ),
          ),
        );
      }),
    );
  }
}
