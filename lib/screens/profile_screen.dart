import 'package:cached_network_image/cached_network_image.dart';
import 'package:facebook_replication/constants.dart';
import 'package:facebook_replication/widgets/custom_button.dart';
import 'package:facebook_replication/widgets/customfont.dart';
import 'package:facebook_replication/widgets/post_card.dart';
import 'package:facebook_replication/widgets/profile_about.dart';
import 'package:facebook_replication/widgets/profile_photos.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfileScreen extends StatefulWidget {
  final String username;
  const ProfileScreen({super.key, required this.username});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  void initState() {
    super.initState();

    // Debug: Print received username
    print('ProfileScreen Username: ${widget.username}');
  }

  @override
  Widget build(BuildContext context) {
    const String profilePicture =
        'https://images.pexels.com/photos/771742/pexels-photo-771742.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500';
    return DefaultTabController(
      length: 3,
      child: Container(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                clipBehavior: Clip.none,
                children: [
                  Container(
                    height: 200,
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      image: DecorationImage(
                        image: CachedNetworkImageProvider(
                            'https://media.istockphoto.com/id/610041376/photo/beautiful-sunrise-over-the-sea.jpg?s=612x612&w=0&k=20&c=R3Tcc6HKc1ixPrBc7qXvXFCicm8jLMMlT99MfmchLNA='),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: -50,
                    left: ScreenUtil().setWidth(20),
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        CachedNetworkImage(
                          imageUrl: profilePicture,
                          imageBuilder: (context, imageProvider) =>
                              CircleAvatar(
                            radius: 50,
                            backgroundImage: imageProvider,
                          ),
                          placeholder: (context, url) =>
                              const CircularProgressIndicator(),
                          errorWidget: (context, url, error) =>
                              const Icon(Icons.error),
                        ),
                        Positioned(
                          bottom: 0,
                          right: 0,
                          child: CircleAvatar(
                            radius: 15,
                            backgroundColor: Colors.grey[300],
                            child: const Icon(
                              Icons.camera_alt,
                              size: 16,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
// Suggested code may be subject to a license. Learn more: ~LicenseLog:1320346444.
              SizedBox(height: ScreenUtil().setHeight(55)),
              Padding(
                padding:
                    EdgeInsets.symmetric(horizontal: ScreenUtil().setWidth(20)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomFont(
                      text: widget.username,
                      fontWeight: FontWeight.bold,
                      fontSize: ScreenUtil().setSp(20),
                      color: Colors.black,
                    ),
                    SizedBox(height: ScreenUtil().setHeight(5)),
                    Row(
                      children: [
                        CustomFont(
                          text: '5k',
                          fontSize: ScreenUtil().setSp(15),
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                        SizedBox(width: ScreenUtil().setWidth(10)),
                        CustomFont(
                          text: 'followers',
                          fontSize: ScreenUtil().setSp(15),
                          color: Colors.grey,
                          fontWeight: FontWeight.w100,
                        ),
                        SizedBox(width: ScreenUtil().setWidth(5)),
                        CustomFont(
                          text: '3k',
                          fontSize: ScreenUtil().setSp(15),
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                        SizedBox(width: ScreenUtil().setWidth(5)),
                        CustomFont(
                          text: 'following',
                          fontSize: ScreenUtil().setSp(15),
                          color: Colors.grey,
                          fontWeight: FontWeight.w100,
                        ),
                      ],
                    ),
                    SizedBox(height: ScreenUtil().setHeight(10)),
                    Row(
                      children: [
                        CustomButton(
                          buttonName: 'Follow',
                          onPressed: () {},
                        ),
                        SizedBox(width: ScreenUtil().setWidth(10)),
                        CustomButton(
                          buttonName: 'Message',
                          onPressed: () {},
                          buttonType: 'outlined',
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: ScreenUtil().setHeight(10)),
              TabBar(
                indicatorColor: FB_DARK_PRIMARY,
                tabs: [
                  Tab(
                    child: CustomFont(
                      text: 'Posts',
                      fontSize: ScreenUtil().setSp(15),
                      color: Colors.black,
                    ),
                  ),
                  Tab(
                    child: CustomFont(
                      text: 'About',
                      fontSize: ScreenUtil().setSp(15),
                      color: Colors.black,
                    ),
                  ),
                  Tab(
                    child: CustomFont(
                      text: 'Photos',
                      fontSize: ScreenUtil().setSp(15),
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
              SizedBox(
                //Post Section
                height: ScreenUtil().setHeight(2000),
                child: TabBarView(
                  children: [
                    Container(
                      color: Colors.white,
                      child: SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 20),
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
                            SizedBox(height: 20),
                            PostCard(
                              userName: 'Sadboi',
                              postContent: 'Maybe I wasnt enough',
                              profilePicture: '',
                              postImage: '',
                              postDate: 'December 14, 2023',
                              initialLikes: 899,
                            ),
                            SizedBox(height: 20),
                            PostCard(
                              userName: 'Jessica Soho',
                              postContent: 'Kabog ang aming team.',
                              profilePicture: '',
                              postImage: '',
                              postDate: 'December 14 at 6:05 PM',
                              initialLikes: 25,
                            ),
                            SizedBox(height: 20),
                            PostCard(
                              userName: 'Jyrex',
                              postContent: 'haysssst',
                              profilePicture: '',
                              postImage: '',
                              postDate: 'December 13, 2024',
                              initialLikes: 55,
                            ),
                          ],
                        ),
                      ),
                    ),
                    const profile_about(),
                    const profile_photos()
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
