import 'package:flutter/material.dart';
import '../widgets/post_card.dart';

class NewsfeedScreen extends StatelessWidget {
  const NewsfeedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        PostCard(
          userName: 'Paul Ebitner',
          postDate: 'December 19, 2024',
          postContent: 'Let’s have fun, Boracay!',
          profilePicture: 'assets/images/paulebitner.jpg',
          postImage: 'assets/images/boracay.jpg',
          initialLikes: 200,
        ),
        PostCard(
          userName: 'Jessica Soho',
          postDate: 'October 20, 2020',
          postContent: 'Lumipad ang aming team.',
          profilePicture: 'assets/images/jessica.jpg',
          postImage: 'assets/images/jessicapost.png',
          initialLikes: 56,
        ),
        PostCard(
          userName: 'Michael V',
          postDate: 'December 29, 2023',
          postContent: 'Hello, mah pren.',
          profilePicture: 'assets/images/Machael.jpg',
          postImage: 'assets/images/pepitopost.jpg',
          initialLikes: 78,
        ),
      ],
    );
  }
}
