import 'package:flutter/material.dart';

class TicketWidget extends StatelessWidget {
  final String passengerName;
  final String date;
  final String flightNumber;
  final String gate;
  final String seat;
  final String ticketClass;
  final String imgPath; // Path to the image to replace the QR code

  const TicketWidget({
    required this.passengerName,
    required this.date,
    required this.flightNumber,
    required this.gate,
    required this.seat,
    required this.ticketClass,
    required this.imgPath,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        // Main ticket container
        Container(
          height: 250,
          width: 200,
          padding: const EdgeInsets.all(16.0),
          color: Colors.black,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Title
              Center(
                child: Text(
                  'Flight Ticket',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
              ),
              SizedBox(height: 8),
              // Ticket Class and Flight Icon
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.flight,
                    color: Colors.white,
                    size: 20,
                  ),
                  SizedBox(width: 4),
                  Text(
                    ticketClass,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 16),
              // Passenger details
              Text(
                'Passenger: $passengerName',
                style: TextStyle(color: Colors.white, fontSize: 12),
              ),
              Text(
                'Date: $date',
                style: TextStyle(color: Colors.white, fontSize: 12),
              ),
              SizedBox(height: 8),
              // Flight, Gate, and Seat details
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Flight: $flightNumber',
                    style: TextStyle(color: Colors.white, fontSize: 12),
                  ),
                  Text(
                    'Gate: $gate',
                    style: TextStyle(color: Colors.white, fontSize: 12),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Seat: $seat',
                    style: TextStyle(color: Colors.white, fontSize: 12),
                  ),
                ],
              ),
              Spacer(),
              // Image at the bottom (instead of QR code)
              Center(
                child: Image.asset(
                  imgPath,
                  height: 40,
                  width: 120,
                  fit: BoxFit.cover,
                ),
              ),
            ],
          ),
        ),
        // Left circular cutout
        Positioned(
          left: -5,
          child: Container(
            height: 20,
            width: 20,
            decoration: const BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
            ),
          ),
        ),
        // Right circular cutout
        Positioned(
          right: -5,
          child: Container(
            height: 20,
            width: 20,
            decoration: const BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
            ),
          ),
        ),
      ],
    );
  }
}
