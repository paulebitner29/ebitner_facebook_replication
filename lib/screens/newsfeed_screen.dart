// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../widgets/post_card.dart';

class NewsfeedScreen extends StatelessWidget {
  const NewsfeedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        PostCard(
          userName: 'Paul Ebitner',
          postDate: 'December 19, 2024',
          postContent: 'Let’s have fun, Boracay!',
          profilePicture:
              'https://images.pexels.com/photos/771742/pexels-photo-771742.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
          postImage:
              'https://media.istockphoto.com/id/610041376/photo/beautiful-sunrise-over-the-sea.jpg?s=612x612&w=0&k=20&c=R3Tcc6HKc1ixPrBc7qXvXFCicm8jLMMlT99MfmchLNA=',
          initialLikes: 200,
        ),
        PostCard(
          userName: 'Jessica Soho',
          postDate: 'October 20, 2020',
          postContent: 'Lumipad ang aming team.',
          profilePicture:
              'https://images.gmanews.tv/webpics/2021/04/jessica_soho_2021_04_08_18_49_05.jpg',
          postImage: '',
          initialLikes: 56,
        ),
        PostCard(
          userName: 'Ralph',
          postDate: 'November 20, 2020',
          postContent: 'Wreck it baby!',
          profilePicture:
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR7umQp9-qseHfnkz0tP8yQNvaSQBNgyhfhUQ&s',
          postImage: '',
          initialLikes: 56,
        ),
        // Advertisement Section Title
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 10),
          child: Text(
            "Advertisement",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ),
        CarouselSlider(
          options: CarouselOptions(
              enableInfiniteScroll: false, height: 308.h, padEnds: false),
          items: carouselItems(),
        ),
        SizedBox(
          height: 20.h,
        ),
        PostCard(
          userName: 'Michael V',
          postDate: 'December 29, 2023',
          postContent: 'Hello, mah pren.',
          profilePicture:
              'https://media.philstar.com/photos/2021/06/05/michael-v_2021-06-05_00-21-20.jpg',
          postImage:
              'https://i1.sndcdn.com/artworks-000045143592-ung2uv-t500x500.jpg',
          initialLikes: 78,
        ),
      ],
    );
  }

  List<Widget> carouselItems() {
    return [
      PostCard(
        userName: 'Boracay.ph',
        postDate: 'December 19, 2024',
        postContent: 'Let’s have fun, Boracay!',
        profilePicture:
            'https://projectgoals.org/cdn/shop/products/10Boracay-_1.jpg?v=1652333189&width=823',
        postImage:
            'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/03/41/04/bc/willy-s-rock.jpg?w=1200&h=1200&s=1',
        isAds: true,
        adsMarket: 'Lets G!',
      ),
      PostCard(
        userName: 'Booking.com',
        postDate: 'December 19, 2024',
        postContent: 'Book your romm now!',
        profilePicture:
            'https://upload.wikimedia.org/wikipedia/commons/thumb/6/6b/Booking.com_Icon_2022.svg/613px-Booking.com_Icon_2022.svg.png?20220609114741',
        postImage:
            'https://cf.bstatic.com/xdata/images/hotel/max1024x768/486566798.jpg?k=a2a38bd1dfe49284e24eb1acfdadc4dffa72a261374ab5ec6ca9ed84ca7f74b0&o=&hp=1',
        isAds: true,
        adsMarket: 'Lets G!',
      ),
      PostCard(
          userName: 'Paul Ebitner',
          postDate: 'December 19, 2024',
          postContent: 'Let’s have fun, Boracay!',
          profilePicture:
              'https://images.pexels.com/photos/771742/pexels-photo-771742.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
          postImage:
              'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/03/41/04/bc/willy-s-rock.jpg?w=1200&h=1200&s=1',
          isAds: true,
          adsMarket: 'Lets G!'),
      PostCard(
          userName: 'Paul Ebitner',
          postDate: 'December 19, 2024',
          postContent: 'Let’s have fun, Boracay!',
          profilePicture:
              'https://images.pexels.com/photos/771742/pexels-photo-771742.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
          postImage:
              'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/03/41/04/bc/willy-s-rock.jpg?w=1200&h=1200&s=1',
          isAds: true,
          adsMarket: 'Lets G!'),
      PostCard(
          userName: 'Paul Ebitner',
          postDate: 'December 19, 2024',
          postContent: 'Let’s have fun, Boracay!',
          profilePicture:
              'https://images.pexels.com/photos/771742/pexels-photo-771742.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
          postImage:
              'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/03/41/04/bc/willy-s-rock.jpg?w=1200&h=1200&s=1',
          isAds: true,
          adsMarket: 'Lets G!'),
    ];
  }
}
