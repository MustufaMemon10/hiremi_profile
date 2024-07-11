import 'package:flutter/material.dart';
import 'package:hiremi_profile/Nav_Bar.dart';
import 'package:hiremi_profile/screens/Verified_Profile_Section/ProfileScreen.dart';

import 'core/utils/constants/AppSizes.dart';
import 'core/utils/constants/colors.dart';


class NewNavbar extends StatefulWidget {
  final bool isV;

  const NewNavbar({super.key, required this.isV});

  @override
  State<NewNavbar> createState() => _NewNavbarState();
}

class _NewNavbarState extends State<NewNavbar> {
  int _selectedIndex = 0;
  final PageController _pageController = PageController();

  late List<Widget> _pages;

  @override
  void initState() {
    super.initState();
    _pages = [
      ProfileScreen(),
      ProfileScreen(),
      ProfileScreen(),
      ProfileScreen(),
    ];
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    _pageController.jumpToPage(index);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          PageView(
            controller: _pageController,
            children: _pages
                .map((page) =>
                Navigator(
                  onGenerateRoute: (settings) {
                    return MaterialPageRoute(
                      builder: (context) => page,
                    );
                  },
                ))
                .toList(),
            onPageChanged: (index) {
              setState(() {
                _selectedIndex = index;
              });
            },
          ),
    ]
      ),
          bottomNavigationBar: const BottomNavBar(),
          floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
          floatingActionButton:
          FloatingActionButton(
              onPressed: () {
                // Define the action for the FloatingActionButton here
              },
              elevation: 0,
              backgroundColor: Colors.white,
              shape: const CircleBorder(),
              child:  const Center(
                child:Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.all_inclusive,
                      color: Color(0xFFC1272D),
                      size: 20,
                    ),
                    Text(
                      'HIREMI',
                      style: TextStyle(fontSize: 7, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      '360',
                      style: TextStyle(fontSize: 6, color: Color(0xFFC1272D)),
                    ),
                  ],
                ),
              )),
    );
  }

  Widget _buildNavItem(IconData icon, String label, int index) {
    return GestureDetector(
      onTap: () => _onItemTapped(index),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            size: 20,
            color: _selectedIndex == index
                ? AppColors.primary
                : Colors.black,
          ),
          Text(
            label,
            style: const TextStyle(
              fontSize: 8,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}