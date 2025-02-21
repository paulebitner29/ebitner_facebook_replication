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
                profilePicture:
                    'https://images.pexels.com/photos/771742/pexels-photo-771742.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
                imagePost:
                    'https://media.istockphoto.com/id/610041376/photo/beautiful-sunrise-over-the-sea.jpg?s=612x612&w=0&k=20&c=R3Tcc6HKc1ixPrBc7qXvXFCicm8jLMMlT99MfmchLNA=',
                initialLikes: 200,
              ),
              Divider(),
              notif.Notification(
                name: 'Jessica Soho',
                postDate: 'October 20, 2020',
                post: 'Lumipad ang aming team.',
                profilePicture:
                    'https://images.gmanews.tv/webpics/2021/04/jessica_soho_2021_04_08_18_49_05.jpg',
                imagePost: '',
                initialLikes: 56,
              ),
              Divider(),
              notif.Notification(
                name: 'Michael V',
                postDate: 'December 29, 2023',
                post: 'Hello, mah pren.',
                profilePicture:
                    'https://media.philstar.com/photos/2021/06/05/michael-v_2021-06-05_00-21-20.jpg',
                imagePost:
                    'https://i1.sndcdn.com/artworks-000045143592-ung2uv-t500x500.jpg',
                initialLikes: 78,
              ),
              Divider(),
              notif.Notification(
                name: 'Marlou',
                post: 'beng geng',
                profilePicture: '',
                imagePost: '',
                postDate: 'January 22, 2021',
                initialLikes: 786,
              ),
              Divider(),
              notif.Notification(
                name: 'Unix',
                post: 'Dinoooo!',
                profilePicture: '',
                postDate: 'January 19, 2014',
                initialLikes: 45,
              ),
              Divider(),
              notif.Notification(
                name: 'Patrick',
                post: 'dadadadada!!',
                profilePicture: '',
                postDate: 'January 19, 2014',
                initialLikes: 45,
              ),
              Divider(),
              notif.Notification(
                name: 'Danilods',
                post: 'lemecook!',
                profilePicture: '',
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
