import 'package:facebook_replication/widgets/share_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../widgets/like_button.dart';
import '../widgets/comment_button.dart';
import '../widgets/customfont.dart';

class PostCard extends StatelessWidget {
  final String userName;
  final String postDate;
  final String postContent;
  final String profilePicture;
  final String postImage;
  final int initialLikes;

  const PostCard({
    super.key,
    required this.userName,
    required this.postContent,
    required this.profilePicture,
    this.postImage = 'elevated',
    required this.initialLikes,
    required this.postDate,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(ScreenUtil().setSp(10)),
      child: Padding(
        padding: EdgeInsets.all(ScreenUtil().setSp(10)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Profile row
            Row(
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage(profilePicture),
                  radius: ScreenUtil().setSp(20),
                ),
                SizedBox(width: ScreenUtil().setSp(10)),
                Column(
                  crossAxisAlignment:
                      CrossAxisAlignment.start, // Align content to the left
                  children: [
                    CustomFont(
                      text: userName,
                      fontSize: ScreenUtil().setSp(15),
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                    Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Icon(Icons.public, size: ScreenUtil().setSp(10)),
                          SizedBox(width: ScreenUtil().setSp(5)),
                          CustomFont(
                            text:
                                postDate, // Replace `date` with the actual date string
                            fontSize: ScreenUtil().setSp(10),
                            color: const Color.fromARGB(255, 39, 32,
                                32), // Use a lighter color for the date
                            fontStyle: FontStyle.italic, // Optional for styling
                          ),
                        ]),
                  ],
                ),
              ],
            ),

            SizedBox(height: ScreenUtil().setSp(10)),
            // Post content
            CustomFont(
              text: postContent,
              fontSize: ScreenUtil().setSp(12),
              color: Colors.black,
            ),
            SizedBox(height: ScreenUtil().setSp(10)),
            if (postImage.isNotEmpty)
              Image.asset(
                postImage,
                fit: BoxFit.cover,
                width: double.infinity,
                height: ScreenUtil().setSp(350),
              ),
            SizedBox(height: ScreenUtil().setSp(10)),
            // Like and Comment buttons
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                LikeButton(initialLikes: initialLikes),
                CommentButton(),
                ShareButton(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
