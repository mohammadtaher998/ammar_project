import 'package:ammar_project/Cards/Client_Review_Card.dart';
import 'package:ammar_project/Cards/List_Of_Clients_Card.dart';
import 'package:flutter/material.dart';

class ClientReview extends StatelessWidget {
 final List<Map<String, dynamic>> clientReviewsData = [
  {
    'reviewerName': 'Omar R.',
    'location': 'El Riyadh',
    'reviewText': 'Such a blast at the Aqua Park! The slides were thrilling, and the obstacles were so much fun to tackle. Can\'t wait to bring the whole family next time!',
    'reviewDate': '15 April 2024',
    'rating': 5,
    'imageUrl': null, // No image provided, default icon will be used
  },
  {
    'reviewerName': 'Sarah L.',
    'location': 'Jeddah',
    'reviewText': 'The place was fantastic! Kids loved the water slides, and the staff was very friendly. A must-visit for families.',
    'reviewDate': '12 March 2024',
    'rating': 4,
      'imageUrl': 'https://firebasestorage.googleapis.com/v0/b/gojo-s.appspot.com/o/Aqaba%2FAqaba%20Church%2Faqaba_church.jpg?alt=media&token=070b7695-1742-4b68-b794-cf28bb82e836', // Replace with actual image URL
  },
  {
    'reviewerName': 'John M.',
    'location': 'Dammam',
    'reviewText': 'Had a wonderful time, but the place was a bit crowded. Overall, a good experience, and the kids had fun.',
    'reviewDate': '5 April 2024',
    'rating': 3,
    'imageUrl': null,
  },
  {
    'reviewerName': 'Fatima A.',
    'location': 'Makkah',
    'reviewText': 'Great place for a weekend getaway. The pools were clean, and the food options were good. Will visit again!',
    'reviewDate': '20 February 2024',
    'rating': 5,
      'imageUrl': 'https://firebasestorage.googleapis.com/v0/b/gojo-s.appspot.com/o/Aqaba%2FAqaba%20Church%2Faqaba_church.jpg?alt=media&token=070b7695-1742-4b68-b794-cf28bb82e836', // Replace with actual image URL
  },
  {
    'reviewerName': 'Ali Z.',
    'location': 'Medina',
    'reviewText': 'Not as expected. The service was slow, and the facilities need improvement. Hope to see better service next time.',
    'reviewDate': '28 March 2024',
    'rating': 2,
    'imageUrl': null,
  },
];

 ClientReview({super.key});



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Bookings",style: TextStyle(fontWeight: FontWeight.bold),),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(20.0),
        itemCount: clientReviewsData.length,
        itemBuilder: (context, index) {
          final clientData = clientReviewsData[index];
          return ClientReviewCard(
          reviewerName: clientData['reviewerName'],
          location: clientData['location'],
          reviewText: clientData['reviewText'],
          reviewDate: clientData['reviewDate'],
          imageUrl: clientData['imageUrl'],
          rating: clientData['rating'],

          );
        },
      ),
    );
  }
}
