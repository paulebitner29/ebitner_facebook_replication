import 'package:facebook_replication/constants.dart';
import 'package:facebook_replication/screens/detail_screen.dart';
import 'package:facebook_replication/widgets/custom_inkwell_button.dart';
import 'package:facebook_replication/widgets/share_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../widgets/like_button.dart';
import '../widgets/comment_button.dart';
import '../widgets/customfont.dart';
import 'package:cached_network_image/cached_network_image.dart';

class PostCard extends StatefulWidget {
  final String userName;
  final String postDate;
  final String postContent;
  final String profilePicture;
  final String imageUrl;
  final String postImage;
  final String adsMarket;
  int initialLikes;
  final bool isAds;
  final double? imageWidth; // Optional image width
  final double? imageHeight;

  // ignore: prefer_const_constructors_in_immutables
  PostCard({
    super.key,
    required this.userName,
    required this.postContent,
    required this.profilePicture,
    this.postImage = 'elevated',
    this.initialLikes = 0,
    required this.postDate,
    this.isAds = false,
    this.adsMarket = '',
    this.imageUrl = '',
    this.imageWidth,
    this.imageHeight,
  });
  @override
  State<PostCard> createState() => _PostCardState();
}

class _PostCardState extends State<PostCard> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Navigate to DetailScreen and pass relevant data
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailScreen(
              userName: widget.userName,
              postContent: widget.postContent,
              postDate: widget.postDate,
              profilePicture: widget.profilePicture,
              imagePost: widget.postImage,
              initialLikes: widget.initialLikes,
            ),
          ),
        );
      },
      child: Card(
        margin: EdgeInsets.all(ScreenUtil().setSp(10)),
        child: Padding(
          padding: EdgeInsets.all(ScreenUtil().setSp(10)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Profile row
              // User Info Section
              Row(
                children: [
                  (widget.profilePicture == '')
                      ? const Icon(
                          Icons.person) // Default icon if no profile image
                      : ClipOval(
                          child: CachedNetworkImage(
                            fit: BoxFit.cover,
                            width: 30,
                            height: 30,
                            imageUrl: widget.profilePicture,
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
                  SizedBox(width: ScreenUtil().setSp(10)),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomFont(
                        text: widget.userName,
                        fontSize: ScreenUtil().setSp(15),
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                      Row(
                        children: [
                          Icon(Icons.public, size: ScreenUtil().setSp(10)),
                          SizedBox(width: ScreenUtil().setSp(5)),
                          CustomFont(
                            text: widget
                                .postDate, // Replace `date` with the actual date string
                            fontSize: ScreenUtil().setSp(10),
                            color: const Color.fromARGB(255, 39, 32, 32),
                            fontStyle: FontStyle.italic,
                          ),
                        ],
                      ),
                    ],
                  ),
                  Spacer(),
                  Icon(Icons.more_horiz),
                ],
              ),
              SizedBox(height: ScreenUtil().setSp(10)),

              // Post Content Section
              CustomFont(
                text: widget.postContent,
                fontSize: ScreenUtil().setSp(12),
                color: Colors.black,
              ),
              SizedBox(height: ScreenUtil().setSp(10)),

              // Post Image Section
              (widget.postImage == '')
                  ? SizedBox(height: ScreenUtil().setHeight(0.1))
                  : Container(
                      width: double.infinity,
                      constraints: BoxConstraints(
                        maxWidth:
                            double.infinity, // Prevents horizontal overflow
                        maxHeight:
                            ScreenUtil().setHeight(140), // Limit ang height
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                            ScreenUtil().setSp(5)), // Optional rounded corners
                      ),
                      clipBehavior:
                          Clip.hardEdge, // Para hindi lumagpas ang image
                      child: CachedNetworkImage(
                        imageUrl: widget.postImage,
                        width: double
                            .infinity, // Ensures it fits inside the card width
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
              SizedBox(height: ScreenUtil().setSp(20)),
              (widget.adsMarket != '')
                  ? const SizedBox()
                  : // Reactions and Buttons Section
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        LikeButton(initialLikes: widget.initialLikes),
                        CommentButton(),
                        ShareButton(),
                      ],
                    ),

              (widget.adsMarket != '')
                  ? Container(
                      padding: EdgeInsets.all(5.sp),
                      child: Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CustomFont(
                                text: 'MORE DETAILS',
                                fontSize: 15.sp,
                                color: Colors.black,
                              ),
                              CustomFont(
                                text: widget.adsMarket,
                                fontSize: 15.sp,
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              )
                            ],
                          ),
                          SizedBox(width: ScreenUtil().setWidth(40)),
                          CustomInkwellButton(
                            width: 80.w,
                            height: 30.h,
                            icon: Icon(
                              Icons.arrow_right_alt,
                              color: FB_LIGHT_PRIMARY,
                            ),
                            onTap: () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => DetailScreen(
                                    userName: widget.userName,
                                    postContent: widget.postContent,
                                    postDate: widget.postDate,
                                    profilePicture: widget.profilePicture,
                                    imagePost: widget.postImage,
                                    initialLikes: widget.initialLikes,
                                  ),
                                )),
                          ),
                        ],
                      ),
                    )
                  : const SizedBox(),

              (widget.adsMarket != '')
                  ? const SizedBox()
                  : SizedBox(
                      height: ScreenUtil().setHeight(10),
                    ),
            ],
          ),
        ),
      ),
    );
  }
}
