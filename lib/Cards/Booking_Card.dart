import 'package:flutter/material.dart';

class BookingCard extends StatelessWidget {
  final String clientName;
  final String bookingDate;
  final String bookingTime;
  final String imageUrl;
  final Function onReviewTap;

  const BookingCard({super.key, 
    required this.clientName,
    required this.bookingDate,
    required this.bookingTime,
    required this.imageUrl,
    required this.onReviewTap,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 10),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.network(
              imageUrl,
              width: 100,
              height: 100,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Client Name: $clientName',
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                  ),
                ),
                const SizedBox(height: 5),
                Text(
                  'Booking Date: $bookingDate',
                  style: TextStyle(
                    color: Colors.grey[700],
                    fontSize: 12,
                  ),
                ),
                const SizedBox(height: 5),
                Text(
                  'Booking Time: $bookingTime',
                  style: TextStyle(
                    color: Colors.grey[700],
                    fontSize: 12,
                  ),
                ),
                const SizedBox(height: 10),            
              ],
            ),
          ),
        ],
      ),
    );
  }
}
