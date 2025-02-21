import 'package:cached_network_image/cached_network_image.dart';
import 'package:facebook_replication/constants.dart';
import 'package:facebook_replication/widgets/comment_button.dart';
import 'package:facebook_replication/widgets/like_button.dart';
import 'package:facebook_replication/widgets/share_button.dart';

// ignore: unused_import
import '/widgets/customfont.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// ignore: must_be_immutable
class DetailScreen extends StatelessWidget {
  final String userName;
  final String postContent;
  final String postDate;
  int initialLikes;
  final String imagePost;
  final String profilePicture;

  DetailScreen({
    super.key,
    required this.userName,
    required this.postContent,
    this.initialLikes = 0,
    required this.postDate,
    this.imagePost = '',
    this.profilePicture = '',
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: CustomFont(
          text: userName,
          fontSize: ScreenUtil().setSp(20),
          color: Colors.black,
        ),
      ),
      body: Container(
        color: Colors.white,
        height: ScreenUtil().screenHeight,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding:
                    EdgeInsets.symmetric(horizontal: ScreenUtil().setWidth(20)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    (profilePicture == '')
                        ? const Icon(
                            Icons.person) // Default icon if no profile image
                        : ClipOval(
                            child: CachedNetworkImage(
                              fit: BoxFit.cover,
                              width: 30,
                              height: 30,
                              imageUrl: profilePicture,
                              progressIndicatorBuilder:
                                  (context, url, downloadProgress) =>
                                      CircularProgressIndicator(
                                color: FB_DARK_PRIMARY,
                                value: downloadProgress.progress,
                              ),
                              errorWidget: (context, url, error) => Icon(
                                Icons.error,
                                size: 100.sp,
                              ),
                            ),
                          ),
                    SizedBox(
                      width: ScreenUtil().setWidth(10),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomFont(
                          text: userName,
                          fontSize: ScreenUtil().setSp(20),
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
                                fontStyle:
                                    FontStyle.italic, // Optional for styling
                              ),
                            ]),
                      ],
                    ),
                    Spacer(),
                    Icon(Icons.more_horiz),
                  ],
                ),
              ),
              SizedBox(
                height: ScreenUtil().setHeight(15),
              ),
              // Post content
              Container(
                alignment: Alignment.centerLeft, // Align text to the left
                padding:
                    EdgeInsets.symmetric(horizontal: ScreenUtil().setWidth(20)),
                child: CustomFont(
                  text: postContent,
                  fontSize: ScreenUtil().setSp(13),
                  color: Colors.black,
                ),
              ),
              SizedBox(height: ScreenUtil().setSp(10)),
              (imagePost == '')
                  ? SizedBox(height: ScreenUtil().setHeight(0.1))
                  : Container(
                      width: double.infinity,
                      constraints: BoxConstraints(
                        maxHeight:
                            ScreenUtil().setHeight(300), // Limit ang height
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                            ScreenUtil().setSp(0)), // Optional rounded corners
                      ),
                      clipBehavior:
                          Clip.hardEdge, // Para hindi lumagpas ang image
                      child: CachedNetworkImage(
                        imageUrl: imagePost,
                        fit: BoxFit.cover,
                        progressIndicatorBuilder:
                            (context, url, downloadProgress) =>
                                CircularProgressIndicator(
                                    color: FB_DARK_PRIMARY,
                                    value: downloadProgress.progress),
                        errorWidget: (context, url, error) =>
                            Icon(Icons.error, size: 100.sp),
                      ),
                    ),
              SizedBox(height: ScreenUtil().setSp(10)),
              Divider(),
              Container(
                padding:
                    EdgeInsets.symmetric(horizontal: ScreenUtil().setWidth(20)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    LikeButton(initialLikes: initialLikes),
                    CommentButton(),
                    ShareButton(),
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



