import '/screens/notification_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '/constants.dart';
import '../screens/newsfeed_screen.dart';
import '../widgets/customfont.dart';
import '/screens/profile_screen.dart';

class HomeScreen extends StatefulWidget {
  final String username;
  const HomeScreen({super.key, required this.username});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;
  final PageController _pageController = PageController();
  String? _username;

  Future<void> _loadUsername() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {});
    print('Retrieved Username: $_username');
  }

  @override
  void initState() {
    super.initState();
    _username = widget.username; // Set the username from the constructor
    _loadUsername(); // Optional: Load persisted username if needed
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shadowColor: FB_LIGHT_PRIMARY,
        elevation: 2,
        title: CustomFont(
          text: _selectedIndex == 0
              ? 'Polbook'
              : _selectedIndex == 1
                  ? 'Notifications'
                  : widget.username,
          fontSize: ScreenUtil().setSp(25),
          color: _selectedIndex == 0
              ? FB_SECONDARY
              : const Color.fromARGB(255, 0, 0, 0),
          fontFamily: 'Klavika',
        ),
      ),
      body: PageView(
        controller: _pageController,
        children: <Widget>[
          const NewsfeedScreen(),
          const NotificationScreen(),
          ProfileScreen(
            username: widget.username,
          ),
        ],
        onPageChanged: (page) {
          setState(() {
            _selectedIndex = page;
          });
        },
      ),
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
        selectedItemColor: FB_PRIMARY,
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
