import 'package:ammar_project/Cards/ListOfClientsCard.dart';
import 'package:flutter/material.dart';

class ListOfCLient extends StatelessWidget {
 final List<Map<String, dynamic>> clientsData = [
  {
    'clientName': 'Tawfic Atyeh',
    'firstBookingDate': '01/15/24',
    'lastBookingDate': '04/15/24',
    'numberOfBookings': 15,
    'imageUrl': null, // Null imageUrl to use default icon
  },
  {
    'clientName': 'Sarah Johnson',
    'firstBookingDate': '02/10/24',
    'lastBookingDate': '03/20/24',
    'numberOfBookings': 8,
      'imageUrl': 'https://firebasestorage.googleapis.com/v0/b/gojo-s.appspot.com/o/Aqaba%2FAqaba%20Church%2Faqaba_church.jpg?alt=media&token=070b7695-1742-4b68-b794-cf28bb82e836', // Replace with actual image URL
  },
  {
    'clientName': 'Michael Lee',
    'firstBookingDate': '01/05/24',
    'lastBookingDate': '04/12/24',
    'numberOfBookings': 12,
    'imageUrl': null,
  },
  {
    'clientName': 'Emily Clark',
    'firstBookingDate': '02/01/24',
    'lastBookingDate': '03/15/24',
    'numberOfBookings': 20,
      'imageUrl': 'https://firebasestorage.googleapis.com/v0/b/gojo-s.appspot.com/o/Aqaba%2FAqaba%20Church%2Faqaba_church.jpg?alt=media&token=070b7695-1742-4b68-b794-cf28bb82e836', // Replace with actual image URL
  },
];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bookings",style: TextStyle(fontWeight: FontWeight.bold),),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(20.0),
        itemCount: clientsData.length,
        itemBuilder: (context, index) {
          final clientData = clientsData[index];
          return ListOfClientsCard(
          clientName: clientData['clientName'],
          firstBookingDate: clientData['firstBookingDate'],
          lastBookingDate: clientData['lastBookingDate'],
          numberOfBookings: clientData['numberOfBookings'],
          imageUrl: clientData['imageUrl'],

          );
        },
      ),
    );
  }
}
