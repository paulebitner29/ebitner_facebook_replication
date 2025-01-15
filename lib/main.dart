import 'package:facebook_replication/screens/home_screen.dart';
import 'package:facebook_replication/screens/newsfeed_screen.dart';
import 'package:facebook_replication/screens/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
 
void main() {
  runApp(const FacebookReplication());
}
 
class FacebookReplication extends StatelessWidget {
  const FacebookReplication({super.key});
 
  @override
 Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(412, 715),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Facebook Replication',
          initialRoute: '/home',
          routes: {
            '/newsfeed': (context) => const NewsfeedScreen(),
            '/home': (context) => const HomeScreen(),
            '/profilescreen': (context) => const ProfileScreen(),
          },
        );
      },
    );
  }
}