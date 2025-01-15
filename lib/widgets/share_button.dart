import 'package:facebook_replication/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ShareButton extends StatefulWidget {
  const ShareButton({super.key});

  @override
  _ShareButtonState createState() => _ShareButtonState();
}

class _ShareButtonState extends State<ShareButton> {
  int _shareCount = 0; // Counter for the number of shares

  void _sharePost() {
    setState(() {
      _shareCount++; // Increment the share count
    });

    // Show a notification (SnackBar) that the post has been shared
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: const Text('Post shared successfully!'),
        duration: const Duration(seconds: 2),
      ),
    );
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
        'Share ($_shareCount)', // Display the share count
        style: TextStyle(
          fontSize: ScreenUtil().setSp(15),
          color: FB_DARK_PRIMARY,
        ),
      ),
    );
  }
}
