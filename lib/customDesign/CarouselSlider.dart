import 'package:flutter/material.dart';
import 'dart:async';

class CarouselSlider extends StatefulWidget {
  final List<String> images;
  final double displayTime;
  final double imageWidth;
  final double imageHeight;

  const CarouselSlider({
    required this.images,
    this.displayTime = 2.0,
    this.imageWidth = 300.0,
    this.imageHeight = 200.0,
    super.key,
  });

  @override
  _CarouselSliderState createState() => _CarouselSliderState();
}

class _CarouselSliderState extends State<CarouselSlider> {
  late final PageController _pageController;
  int _currentPage = 0;
  Timer? _timer;

  @override
  void initState() {
    super.initState();
    // Start at the second page for infinite scroll illusion
    _currentPage = 1;
    _pageController = PageController(initialPage: _currentPage);
    _startAutoScroll();
  }

  void _startAutoScroll() {
    _timer = Timer.periodic(
      Duration(seconds: widget.displayTime.toInt()),
      (timer) {
        if (_pageController.hasClients) {
          // Move to the next page
          _currentPage++;
          _pageController.animateToPage(
            _currentPage,
            duration: const Duration(milliseconds: 300),
            curve: Curves.easeInOut,
          );
        }
      },
    );
  }

  @override
  void dispose() {
    _timer?.cancel();
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: widget.imageHeight,
      width: widget.imageWidth,
      child: PageView.builder(
        controller: _pageController,
        onPageChanged: (index) {
          setState(() {
            _currentPage = index;
            // Reset to loop seamlessly when reaching the end
            if (_currentPage == 0) {
              _pageController.jumpToPage(widget.images.length);
            } else if (_currentPage == widget.images.length + 1) {
              _pageController.jumpToPage(1);
            }
          });
        },
        itemCount: widget.images.length + 2, // Add two extra pages for looping
        itemBuilder: (context, index) {
          // Calculate the correct image index
          final realIndex = (index - 1 + widget.images.length) % widget.images.length;

          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: Image.network(
                widget.images[realIndex],
                fit: BoxFit.cover,
              ),
            ),
          );
        },
      ),
    );
  }
}
