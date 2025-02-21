import 'package:cached_network_image/cached_network_image.dart';
import 'package:facebook_replication/constants.dart';
import 'package:facebook_replication/screens/detail_screen.dart';
import 'package:facebook_replication/widgets/customfont.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Notification extends StatelessWidget {
  const Notification(
      {super.key,
      required this.name,
      required this.post,
      this.icon = const Icon(Icons.person),
      this.atProfile = false,
      required this.postDate,
      this.profilePicture = '',
      this.imagePost = '',
      required this.initialLikes,
      this.imgUrl = ''});

  final String name;
  // Post Title
  final String post;
  // Post Content
  final Icon icon;
  final String postDate;
  final int initialLikes;
  final String profilePicture;
  final String imagePost;
  final String imgUrl;
  final bool atProfile;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(ScreenUtil().setSp(15)),
      child: InkWell(
        onTap: () {
          (atProfile)
              ? print('')
              : Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailScreen(
                      userName: name,
                      postContent: post,
                      postDate: postDate,
                      profilePicture: profilePicture,
                      imagePost: imagePost,
                      initialLikes: initialLikes,
                    ),
                  ),
                );
        },
        child: Row(
          children: [
            (profilePicture == '')
                ? const Icon(Icons.person) // Default icon if no profile image
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
            SizedBox(width: ScreenUtil().setSp(10)),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomFont(
                  text: name,
                  fontSize: ScreenUtil().setSp(20),
                  color: Colors.black,
                  fontWeight: FontWeight.w400,
                ),
                CustomFont(
                  text: 'Posted: $post',
                  fontSize: ScreenUtil().setSp(13),
                  color: Colors.black,
                ),
                SizedBox(
                  height: ScreenUtil().setHeight(5),
                ),
                CustomFont(
                  text: postDate,
                  fontSize: ScreenUtil().setSp(12),
                  color: Colors.grey.shade400,
                ),
              ],
            ),
            const Spacer(),
            const Icon(Icons.more_horiz),
          ],
        ),
      ),
    );
  }
}

// import 'package:facebook_replication/widgets/customfont.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';

// class Notification extends StatelessWidget {
//   final String name;
//   final String post;
//   final String description;
//   final String image;
//   final Icon icon;
//   final String date;
//   final int numOfLikes;
//   final bool atProfile;
  

//   const Notification({
//     super.key,
//     required this.name,
//     required this.post,
//     required this.description,
//     required this.image,
//     this.icon = const Icon(Icons.person), 
//     this.atProfile = false,
//     required this.date,
//     required this.numOfLikes,
    
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Card(
//       child: Container(
//         padding: EdgeInsets.all(ScreenUtil().setSp(15)),
//         child: Row(
//           children: [
//             ClipRRect(
//               borderRadius: BorderRadius.circular(50),
//               child: Image.asset(
//                 image, fit: BoxFit.cover, // Use imagePath here
//                 width: ScreenUtil().setSp(50),
//                 height: ScreenUtil().setSp(50),
//               ),
//             ),
//             SizedBox(
//               width: ScreenUtil().setWidth(10),
//             ),
//             Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 CustomFont(
//                   text: name,
//                   fontSize: ScreenUtil().setSp(20),
//                   color: Colors.black,
//                   fontWeight: FontWeight.w800,
//                 ),
//                 CustomFont(
//                   text: 'Posted: $post',
//                   fontSize: ScreenUtil().setSp(13),
//                   color: Colors.black,
//                 ),
//                 CustomFont(
//                   text: description,
//                   fontSize: ScreenUtil().setSp(12),
//                   color: Colors.black,
//                   fontStyle: FontStyle.italic,
//                 ),
//               ],
//             ),
//             const Spacer(),
//             const Icon(Icons.more_horiz),
//           ],
//         ),
//       ),
//     );
//   }
// }
