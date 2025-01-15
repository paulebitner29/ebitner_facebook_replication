import 'package:facebook_replication/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ShareButton extends StatefulWidget {
  const ShareButton({super.key});

  @override
  _ShareButtonState createState() => _ShareButtonState();
}

class _ShareButtonState extends State<ShareButton> {
  void _sharePost() {
    print("Shared"); // Print "Shared" to the console
  }

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      onPressed: _sharePost, // Call _sharePost when clicked
      icon: Icon(
        Icons.share_outlined, // Icon for the share button
        color: FB_DARK_PRIMARY,
      ),
      label: Text(
        'Share',
        style: TextStyle(
          fontSize: ScreenUtil().setSp(12),
          color: FB_DARK_PRIMARY,
        ),
      ),
    );
  }
}
