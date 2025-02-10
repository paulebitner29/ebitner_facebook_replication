import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../widgets/notification.dart' as notif;

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          color: Colors.white,
          width: ScreenUtil().screenWidth,
          child: const Column(
            children: [
              notif.Notification(
                name: 'Paul Ebitner',
                postDate: 'December 19, 2024',
                post: 'Let’s have fun, Boracay!',
                profilePicture: 'assets/images/paulebitner.jpg',
                imagePost: 'assets/images/boracay.jpg',
                initialLikes: 200,
              ),
              Divider(),
              notif.Notification(
                name: 'Jessica Soho',
                postDate: 'October 20, 2020',
                post: 'Lumipad ang aming team.',
                profilePicture: 'assets/images/jessica.jpg',
                imagePost: 'assets/images/jessicapost.png',
                initialLikes: 56,
              ),
              Divider(),
              notif.Notification(
                name: 'Michael V',
                postDate: 'December 29, 2023',
                post: 'Hello, mah pren.',
                profilePicture: 'assets/images/Machael.jpg',
                imagePost: 'assets/images/pepitopost.jpg',
                initialLikes: 78,
              ),
              Divider(),
              notif.Notification(
                name: 'Marlou',
                post: 'beng geng',
                profilePicture: '',
                imagePost: 'assets/images/paulebitner.jpg',
                postDate: 'January 22, 2021',
                initialLikes: 786,
              ),
              Divider(),
              notif.Notification(
                name: 'Unix',
                post: 'Dinoooo!',
                profilePicture: 'assets/images/defaultprofilepic.jpg',
                postDate: 'January 19, 2014',
                initialLikes: 45,
              ),
              Divider(),
              notif.Notification(
                name: 'Patrick',
                post: 'dadadadada!!',
                profilePicture: 'assets/images/defaultprofilepic.jpg',
                postDate: 'January 19, 2014',
                initialLikes: 45,
              ),
              Divider(),
              notif.Notification(
                name: 'Danilods',
                post: 'lemecook!',
                profilePicture: 'assets/images/defaultprofilepic.jpg',
                postDate: 'February 9, 2017',
                initialLikes: 45,
              ),
              Divider(),
            ],
          ),
        ),
      ],
    );
  }
}
