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
                post: 'waaahhhhhh!',
                description: 'Amazing!',
                image: 'assets/images/paulebitner.jpg',
              ),
              Divider(),
              notif.Notification(
                name: 'Danilo Casil',
                post: 'uy si crush',
                description: 'ganda mo always.',
                image: 'assets/images/defaultprofilepic.jpg',
              ),
              Divider(),
              notif.Notification(
                name: 'Jyrex',
                post: 'qc gurls',
                description: 'maloissss ',
                image: 'assets/images/defaultprofilepic.jpg',
              ),
              Divider(),
              notif.Notification(
                name: 'Marlou',
                post: 'beng geng',
                description: 'lol us XD',
                image: 'assets/images/defaultprofilepic.jpg',
              ),
              Divider(),
              notif.Notification(
                name: 'Unix',
                post: 'Dinoooo!',
                description: 'RORRRRRRRRRR!!!!',
                image: 'assets/images/defaultprofilepic.jpg',
              ),
              Divider(),
              notif.Notification(
                name: 'Paul Ebitner',
                post: 'Post',
                description: 'Description',
                image: 'assets/images/paulebitner.jpg',
              ),
              Divider(),
              notif.Notification(
                name: 'Paul Ebitner',
                post: 'Post',
                description: 'Description',
                image: 'assets/images/paulebitner.jpg',
              ),
              Divider(),
              notif.Notification(
                name: 'Paul Ebitner',
                post: 'Post',
                description: 'Description',
                image: 'assets/images/paulebitner.jpg',
              ),
              Divider(),
            ],
          ),
        ),
      ],
    );
  }
}
