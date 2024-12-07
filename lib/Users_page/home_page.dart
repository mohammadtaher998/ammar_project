import 'package:ammar_project/Cards/Main_widget.dart';
import 'package:ammar_project/Cards/Most_Public_Activity_card.dart';
import 'package:flutter/material.dart';

class home_page extends StatefulWidget {
  const home_page({super.key});

  @override
  _home_page createState() => _home_page();
}

class _home_page extends State<home_page> {
  int notificationCount = 0;
  final List<Map<String, String>> cardsData = [
    {
      'imageUrl':
          'https://firebasestorage.googleapis.com/v0/b/gojo-s.appspot.com/o/Aqaba%2FAqaba%2Faqaba_a.jpg?alt=media&token=83bd506f-9e8e-4a0d-8dfe-3affe9bb2971',
      'title': 'رحلة بالجتسكي',
      'subtitle': 'شاطئ الشويخ',
      'time': 'من الساعة 9 صباحاً إلى الساعة 11 صباحاً',
    },
    {
      'imageUrl':
          'https://firebasestorage.googleapis.com/v0/b/gojo-s.appspot.com/o/Aqaba%2FAqaba%2Faqaba.jpg?alt=media&token=648c0d8b-0a8c-471f-84bb-7675879bb238',
      'title': 'جولة بحرية',
      'subtitle': 'شاطئ السالمية',
      'time': 'من الساعة 4 مساءً إلى الساعة 6 مساءً',
    },
    {
      'imageUrl':
          'https://firebasestorage.googleapis.com/v0/b/gojo-s.appspot.com/o/Aqaba%2FAqaba%2Faqaba.jpg?alt=media&token=648c0d8b-0a8c-471f-84bb-7675879bb238',
      'title': 'جولة بحرية',
      'subtitle': 'شاطئ السالمية',
      'time': 'من الساعة 4 مساءً إلى الساعة 6 مساءً',
    },
    {
      'imageUrl':
          'https://firebasestorage.googleapis.com/v0/b/gojo-s.appspot.com/o/Aqaba%2FAqaba%2Faqaba.jpg?alt=media&token=648c0d8b-0a8c-471f-84bb-7675879bb238',
      'title': 'جولة بحرية',
      'subtitle': 'شاطئ السالمية',
      'time': 'من الساعة 4 مساءً إلى الساعة 6 مساءً',
    },
    {
      'imageUrl':
          'https://firebasestorage.googleapis.com/v0/b/gojo-s.appspot.com/o/Aqaba%2FAqaba%2Faqaba_a.jpg?alt=media&token=83bd506f-9e8e-4a0d-8dfe-3affe9bb2971',
      'title': 'رحلة بالجتسكي',
      'subtitle': 'شاطئ الشويخ',
      'time': 'من الساعة 9 صباحاً إلى الساعة 11 صباحاً',
    },
    {
      'imageUrl':
          'https://firebasestorage.googleapis.com/v0/b/gojo-s.appspot.com/o/Aqaba%2FAqaba%2Faqaba.jpg?alt=media&token=648c0d8b-0a8c-471f-84bb-7675879bb238',
      'title': 'جولة بحرية',
      'subtitle': 'شاطئ السالمية',
      'time': 'من الساعة 4 مساءً إلى الساعة 6 مساءً',
    },
    {
      'imageUrl':
          'https://firebasestorage.googleapis.com/v0/b/gojo-s.appspot.com/o/Aqaba%2FAqaba%2Faqaba.jpg?alt=media&token=648c0d8b-0a8c-471f-84bb-7675879bb238',
      'title': 'جولة بحرية',
      'subtitle': 'شاطئ السالمية',
      'time': 'من الساعة 4 مساءً إلى الساعة 6 مساءً',
    },
    {
      'imageUrl':
          'https://firebasestorage.googleapis.com/v0/b/gojo-s.appspot.com/o/Aqaba%2FAqaba%2Faqaba.jpg?alt=media&token=648c0d8b-0a8c-471f-84bb-7675879bb238',
      'title': 'جولة بحرية',
      'subtitle': 'شاطئ السالمية',
      'time': 'من الساعة 4 مساءً إلى الساعة 6 مساءً',
    },
  ];

  final List<Map<String, String>> mostSellingItems = [
    {
      'imageUrl':
          'https://firebasestorage.googleapis.com/v0/b/gojo-s.appspot.com/o/Aqaba%2FAqaba%2Faqaba.jpg?alt=media&token=648c0d8b-0a8c-471f-84bb-7675879bb238',
      'title': 'شاطئ الرمال',
      'subtitle': 'الأردن - العقبة',
      'time': '9:00 صباحًا - 12:00 مساءً',
    },
    {
      'imageUrl':
          'https://firebasestorage.googleapis.com/v0/b/gojo-s.appspot.com/o/Aqaba%2FAqaba%2Faqaba.jpg?alt=media&token=648c0d8b-0a8c-471f-84bb-7675879bb238',
      'title': 'جولة بحرية',
      'subtitle': 'الإمارات - دبي',
      'time': '4:00 مساءً - 6:00 مساءً',
    },
    {
      'imageUrl':
          'https://firebasestorage.googleapis.com/v0/b/gojo-s.appspot.com/o/Aqaba%2FAqaba%2Faqaba.jpg?alt=media&token=648c0d8b-0a8c-471f-84bb-7675879bb238',
      'title': 'تسلق الجبال',
      'subtitle': 'السعودية - الرياض',
      'time': '6:00 صباحًا - 8:00 صباحًا',
    },
     {
      'imageUrl':
          'https://firebasestorage.googleapis.com/v0/b/gojo-s.appspot.com/o/Aqaba%2FAqaba%2Faqaba.jpg?alt=media&token=648c0d8b-0a8c-471f-84bb-7675879bb238',
      'title': 'شاطئ الرمال',
      'subtitle': 'الأردن - العقبة',
      'time': '9:00 صباحًا - 12:00 مساءً',
    },
    {
      'imageUrl':
          'https://firebasestorage.googleapis.com/v0/b/gojo-s.appspot.com/o/Aqaba%2FAqaba%2Faqaba.jpg?alt=media&token=648c0d8b-0a8c-471f-84bb-7675879bb238',
      'title': 'جولة بحرية',
      'subtitle': 'الإمارات - دبي',
      'time': '4:00 مساءً - 6:00 مساءً',
    },
    {
      'imageUrl':
          'https://firebasestorage.googleapis.com/v0/b/gojo-s.appspot.com/o/Aqaba%2FAqaba%2Faqaba.jpg?alt=media&token=648c0d8b-0a8c-471f-84bb-7675879bb238',
      'title': 'تسلق الجبال',
      'subtitle': 'السعودية - الرياض',
      'time': '6:00 صباحًا - 8:00 صباحًا',
    },
     {
      'imageUrl':
          'https://firebasestorage.googleapis.com/v0/b/gojo-s.appspot.com/o/Aqaba%2FAqaba%2Faqaba.jpg?alt=media&token=648c0d8b-0a8c-471f-84bb-7675879bb238',
      'title': 'شاطئ الرمال',
      'subtitle': 'الأردن - العقبة',
      'time': '9:00 صباحًا - 12:00 مساءً',
    },
    {
      'imageUrl':
          'https://firebasestorage.googleapis.com/v0/b/gojo-s.appspot.com/o/Aqaba%2FAqaba%2Faqaba.jpg?alt=media&token=648c0d8b-0a8c-471f-84bb-7675879bb238',
      'title': 'جولة بحرية',
      'subtitle': 'الإمارات - دبي',
      'time': '4:00 مساءً - 6:00 مساءً',
    },
    {
      'imageUrl':
          'https://firebasestorage.googleapis.com/v0/b/gojo-s.appspot.com/o/Aqaba%2FAqaba%2Faqaba.jpg?alt=media&token=648c0d8b-0a8c-471f-84bb-7675879bb238',
      'title': 'تسلق الجبال',
      'subtitle': 'السعودية - الرياض',
      'time': '6:00 صباحًا - 8:00 صباحًا',
    },
  ];
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  String _selectedCountry = "الكويت";

  final List<String> _countries = [
    "الكويت",
    "قطر",
    "الإمارات",
    "السعودية",
  ];
  void _incrementNotification() {
    setState(() {
      notificationCount += 1;
    });
  }

  void _resetNotification() {
    setState(() {
      notificationCount = 0;
    });
  }

  late PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(viewportFraction: 0.8);
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: Drawer(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.grey[200]),
              child: Center(
                child: Column(
                  children: [
                    const CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage('assets/profile_image.png'),
                    ),
                    const SizedBox(height: 10),
                    ElevatedButton(
                      onPressed: () {
                      },
                      child: const Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text("تسجيل الدخول"),
                          SizedBox(width: 5),
                          Icon(Icons.login),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
        
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text('الصفحة الرئيسية'),
              onTap: () {
              },
            ),
            ListTile(
              leading: const Icon(Icons.search),
              title: const Text('بحث'),
              onTap: () {
              },
            ),
            ListTile(
              leading: const Icon(Icons.book_online),
              title: const Text('تذكرتي'),
              onTap: () {
              },
            ),
            ListTile(
              leading: const Icon(Icons.add),
              title: const Text('الفعاليات الخاصة بك'),
              onTap: () {
              },
            ),
            const Divider(),
        
            ListTile(
              leading: const Icon(Icons.contact_phone),
              title: const Text('اتصل بنا'),
              onTap: () {
              },
            ),
            ListTile(
              leading: const Icon(Icons.info_outline),
              title: const Text('سياسة الخصوصية'),
              onTap: () {
              },
            ),
            ListTile(
              leading: const Icon(Icons.privacy_tip),
              title: const Text('الشروط والأحكام'),
              onTap: () {
              },
            ),
            const Spacer(),
            Container(
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
              margin: const EdgeInsets.all(30),
              padding: const EdgeInsets.all(15),
              child: DropdownButtonFormField<String>(
                value: _selectedCountry,
                items: _countries.map((String country) {
                  return DropdownMenuItem<String>(
                    value: country,
                    child: Row(
                      children: [
                        const Icon(
                          Icons.flag,
                        ),
                        Text(country),
                      ],
                    ),
                  );
                }).toList(),
                onChanged: (String? newValue) {
                  setState(() {
                    _selectedCountry = newValue!;
                  });
                },
              borderRadius:  const BorderRadius.all(Radius.circular(12)),
                icon: const SizedBox(),
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    _scaffoldKey.currentState
                        ?.openDrawer(); 
                  },
                  child: const CircleAvatar(
                    radius: 20,
                    backgroundImage: AssetImage('assets/profile_image.png'),
                    child: Icon(Icons.person, color: Colors.white),
                  ),
                ),
                Stack(
                  children: [
                    IconButton(
                      icon: const Icon(Icons.notifications, color: Colors.black),
                      iconSize: 30,
                      onPressed: _resetNotification,
                    ),
                    if (notificationCount > 0)
                      Positioned(
                        right: 11,
                        top: 11,
                        child: Container(
                          padding: const EdgeInsets.all(2),
                          decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          constraints: const BoxConstraints(
                            minWidth: 16,
                            minHeight: 16,
                          ),
                          child: Text(
                            '$notificationCount',
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 10),
            TextField(
              decoration: InputDecoration(
                hintText: "What are you looking for?",
                prefixIcon: const Icon(Icons.search, color: Colors.grey),
                filled: true,
                fillColor: Colors.grey[200],
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
            const SizedBox(height: 20),
            SizedBox(
              height: 200,
              child: PageView.builder(
                controller: _pageController,
                itemCount: cardsData.length,
                physics: const BouncingScrollPhysics(),
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      AnimatedBuilder(
                        animation: _pageController,
                        builder: (context, child) {
                          double value = 1.0;
                          if (_pageController.position.haveDimensions) {
                            value = _pageController.page! - index;
                            value = (1 - value.abs() * 0.2)
                                .clamp(0.9, 1.0); // Adjust scaling
                          }
                          return Transform.scale(
                            scale: value,
                            child: Most_Public_Activity_card(
                              imageUrl: cardsData[index]['imageUrl']!,
                              title: cardsData[index]['title']!,
                              subtitle: cardsData[index]['subtitle']!,
                              time: cardsData[index]['time']!,
                              onTap: () {},
                            ),
                          );
                        },
                      ),
                    ],
                  );
                },
              ),
            ),
            const SizedBox(height: 20),
            MainActivityCard(
              title: "أكثر الأنشطة مبيعاً",
              items: mostSellingItems,
            ),
            const SizedBox(height: 20),
            MainActivityCard(
              title: "فعاليات خارجيه",
              items: mostSellingItems,
            ),
            const SizedBox(height: 20),
            MainActivityCard(
              title: "نشطه داخليه",
              items: mostSellingItems,
            ),
          ],
        ),
      ),
    );
  }
}
