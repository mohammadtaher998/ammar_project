import 'package:flutter/material.dart';
import '../Cards/BookingCard.dart';

class BookingsScreen extends StatelessWidget {
  final List<Map<String, String>> bookings = [
    {
      'clientName': 'Tawfic Atyeh',
      'bookingDate': '04/15/24',
      'bookingTime': '12 PM - 02 PM',
      'imageUrl': 'https://firebasestorage.googleapis.com/v0/b/gojo-s.appspot.com/o/Aqaba%2FAqaba%20Church%2Faqaba_church.jpg?alt=media&token=070b7695-1742-4b68-b794-cf28bb82e836', // Replace with actual image URL
    },
    {
      'clientName': 'John Doe',
      'bookingDate': '04/16/24',
      'bookingTime': '10 AM - 12 PM',
      'imageUrl': 'https://firebasestorage.googleapis.com/v0/b/gojo-s.appspot.com/o/Aqaba%2FAqaba%20Church%2Faqaba_church.jpg?alt=media&token=070b7695-1742-4b68-b794-cf28bb82e836', // Replace with actual image URL
    },
    {
      'clientName': 'Jane Smith',
      'bookingDate': '04/17/24',
      'bookingTime': '2 PM - 4 PM',
      'imageUrl': 'https://firebasestorage.googleapis.com/v0/b/gojo-s.appspot.com/o/Aqaba%2FAqaba%20Church%2Faqaba_church.jpg?alt=media&token=070b7695-1742-4b68-b794-cf28bb82e836', // Replace with actual image URL
    },
     {
      'clientName': 'Tawfic Atyeh',
      'bookingDate': '04/15/24',
      'bookingTime': '12 PM - 02 PM',
      'imageUrl': 'https://firebasestorage.googleapis.com/v0/b/gojo-s.appspot.com/o/Aqaba%2FAqaba%20Church%2Faqaba_church.jpg?alt=media&token=070b7695-1742-4b68-b794-cf28bb82e836', // Replace with actual image URL
    },
    {
      'clientName': 'John Doe',
      'bookingDate': '04/16/24',
      'bookingTime': '10 AM - 12 PM',
      'imageUrl': 'https://firebasestorage.googleapis.com/v0/b/gojo-s.appspot.com/o/Aqaba%2FAqaba%20Church%2Faqaba_church.jpg?alt=media&token=070b7695-1742-4b68-b794-cf28bb82e836', // Replace with actual image URL
    },
    {
      'clientName': 'Jane Smith',
      'bookingDate': '04/17/24',
      'bookingTime': '2 PM - 4 PM',
      'imageUrl': 'https://firebasestorage.googleapis.com/v0/b/gojo-s.appspot.com/o/Aqaba%2FAqaba%20Church%2Faqaba_church.jpg?alt=media&token=070b7695-1742-4b68-b794-cf28bb82e836', // Replace with actual image URL
    },
     {
      'clientName': 'Tawfic Atyeh',
      'bookingDate': '04/15/24',
      'bookingTime': '12 PM - 02 PM',
      'imageUrl': 'https://firebasestorage.googleapis.com/v0/b/gojo-s.appspot.com/o/Aqaba%2FAqaba%20Church%2Faqaba_church.jpg?alt=media&token=070b7695-1742-4b68-b794-cf28bb82e836', // Replace with actual image URL
    },
    {
      'clientName': 'John Doe',
      'bookingDate': '04/16/24',
      'bookingTime': '10 AM - 12 PM',
      'imageUrl': 'https://firebasestorage.googleapis.com/v0/b/gojo-s.appspot.com/o/Aqaba%2FAqaba%20Church%2Faqaba_church.jpg?alt=media&token=070b7695-1742-4b68-b794-cf28bb82e836', // Replace with actual image URL
    },
    {
      'clientName': 'Jane Smith',
      'bookingDate': '04/17/24',
      'bookingTime': '2 PM - 4 PM',
      'imageUrl': 'https://firebasestorage.googleapis.com/v0/b/gojo-s.appspot.com/o/Aqaba%2FAqaba%20Church%2Faqaba_church.jpg?alt=media&token=070b7695-1742-4b68-b794-cf28bb82e836', // Replace with actual image URL
    },
    // Add more bookings here
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bookings",style: TextStyle(fontWeight: FontWeight.bold),),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(20.0),
        itemCount: bookings.length,
        itemBuilder: (context, index) {
          final booking = bookings[index];
          return BookingCard(
            clientName: booking['clientName']!,
            bookingDate: booking['bookingDate']!,
            bookingTime: booking['bookingTime']!,
            imageUrl: booking['imageUrl']!,
            onReviewTap:(){}
          );
        },
      ),
    );
  }
}
