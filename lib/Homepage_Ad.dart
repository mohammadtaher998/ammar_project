import 'package:ammar_project/Pages/SignIn_Screen.dart';
import 'package:ammar_project/Pages/SignUp_Screen.dart';
import 'package:ammar_project/Users_page/home.dart';
import 'package:ammar_project/Users_page/home_page.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class HomePage1 extends StatefulWidget {
  const HomePage1({super.key});

  @override
  _HomePageState1 createState() => _HomePageState1();
}

class _HomePageState1 extends State<HomePage1> {
  final List<String> imgList = [
    'https://firebasestorage.googleapis.com/v0/b/gojo-s.appspot.com/o/Aqaba%2FAqaba%20Church%2Faqaba_church.jpg?alt=media&token=070b7695-1742-4b68-b794-cf28bb82e836',
    'https://firebasestorage.googleapis.com/v0/b/gojo-s.appspot.com/o/Aqaba%2FAqaba%20Church%2Faqaba_church.jpg?alt=media&token=070b7695-1742-4b68-b794-cf28bb82e836',
    'https://firebasestorage.googleapis.com/v0/b/gojo-s.appspot.com/o/Aqaba%2FAqaba%20Church%2Faqaba_church.jpg?alt=media&token=070b7695-1742-4b68-b794-cf28bb82e836',
  ];

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // Carousel Slider for background images
        CarouselSlider(
          options: CarouselOptions(
            autoPlay: true,
            enlargeCenterPage: true,
            height: double.infinity,
            viewportFraction:
                1.0, // Ensure the carousel item fills the entire screen width
          ),
          items: imgList
              .map((item) => Image.network(item, fit: BoxFit.cover))
              .toList(),
        ),

        // Overlaying content
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 50),
          color: Colors.black.withOpacity(0.5), // Semi-transparent overlay
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Browse in English button at the top left
              Align(
                alignment: Alignment.topLeft,
                child: ElevatedButton(
                  onPressed: () {
  Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => const Home()));                  },
                  style:
                      ElevatedButton.styleFrom(backgroundColor: Colors.white),
                  child: Text('Browse in English'),
                ),
              ),

              const Spacer(),
              // White text on top
              const Text(
                'تطبيقك الشامل لأمتعة التجارب', // Arabic Text as an example
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),


              // Two buttons at the bottom
              Column(
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => SignUpScreen()));    
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.red,
                        minimumSize: const Size(double.infinity, 50) ,),
                    child: Text('Sign Up',style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
        )),
                  ),
                  const SizedBox(height: 16),
                  ElevatedButton(
                    onPressed: () {
                    Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => SignInScreen()));    
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor:const Color.fromARGB(255, 66, 66, 66),
                      minimumSize: const Size(double.infinity,
                          50), // This will set width to infinity
                    ),
                    child: Text('Log In',style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
        )),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}