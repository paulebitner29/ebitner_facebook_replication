import 'package:facebook_replication/widgets/customfont.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Notification extends StatelessWidget {
  final String name;
  final String post;
  final String description;
  final String image;

  const Notification({
    super.key,
    required this.name,
    required this.post,
    required this.description,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        padding: EdgeInsets.all(ScreenUtil().setSp(15)),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(50),
              child: Image.asset(
                image, fit: BoxFit.cover, // Use imagePath here
                width: ScreenUtil().setSp(50),
                height: ScreenUtil().setSp(50),
              ),
            ),
            SizedBox(
              width: ScreenUtil().setWidth(10),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomFont(
                  text: name,
                  fontSize: ScreenUtil().setSp(20),
                  color: Colors.black,
                  fontWeight: FontWeight.w800,
                ),
                CustomFont(
                  text: 'Posted: $post',
                  fontSize: ScreenUtil().setSp(13),
                  color: Colors.black,
                ),
                CustomFont(
                  text: description,
                  fontSize: ScreenUtil().setSp(12),
                  color: Colors.black,
                  fontStyle: FontStyle.italic,
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
