import 'package:facebook_replication/constants.dart';
import 'package:facebook_replication/screens/notification_screen.dart';
import 'package:facebook_replication/screens/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../screens/newsfeed_screen.dart';
import '../widgets/customfont.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreen();
}

class _HomeScreen extends State<HomeScreen> {
  int _selectedIndex = 0;
  final PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shadowColor: FB_TEXT_COLOR_WHITE,
        elevation: 2,
        title: CustomFont(
          text: _selectedIndex == 0
              ? 'PolBook'
              : _selectedIndex == 1
                  ? 'notification'
                  : 'Paul Ebitner',
          fontSize: ScreenUtil().setSp(25),
          color: _selectedIndex == 0
          ? FB_SECONDARY
          : const Color.fromARGB(255, 0, 0, 0),
          fontFamily: 'Klavika',
        ),
        actions: [
          TextButton(onPressed: () => print('LOGOUT'), child: Text('LOGOUT')),
        ],
      ),
      body: PageView(
          controller: _pageController,
          children: const <Widget>[
            NewsfeedScreen(),
            NotificationScreen(),
            ProfileScreen(),
          ],
          onPageChanged: (page) {
            setState(
              () {
                _selectedIndex = page;
              },
            );
          }),
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        onTap: _onTappedBar,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.notifications), label: 'Notifications'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
        selectedItemColor: FB_SECONDARY,
        currentIndex: _selectedIndex,
      ),
    );
  }

  void _onTappedBar(int value) {
    setState(() {
      _selectedIndex = value;
    });
    _pageController.jumpToPage(value);
  }
}
