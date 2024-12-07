import 'package:flutter/material.dart';

class ListOfClientsCard extends StatelessWidget {
  final String clientName;
  final String firstBookingDate;
  final String lastBookingDate;
  final int numberOfBookings;
  final String? imageUrl;

  const ListOfClientsCard({super.key, 
    required this.clientName,
    required this.firstBookingDate,
    required this.lastBookingDate,
    required this.numberOfBookings,
    this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 10),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Row(
          children: [
            // Image Section
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: imageUrl != null
                  ? Image.network(
                      imageUrl!,
                      width: 80,
                      height: 80,
                      fit: BoxFit.cover,
                    )
                  : const Icon(
                      Icons.person,
                      size: 80,
                      color: Colors.grey,
                    ),
            ),
            const SizedBox(width: 10),
            // Text Section
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
                    'First Booking Date: $firstBookingDate',
                    style: TextStyle(
                      color: Colors.grey[700],
                      fontSize: 12,
                    ),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    'Last Booking Date: $lastBookingDate',
                    style: TextStyle(
                      color: Colors.grey[700],
                      fontSize: 12,
                    ),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    'Number of Bookings: $numberOfBookings',
                    style: TextStyle(
                      color: Colors.grey[700],
                      fontSize: 12,
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
