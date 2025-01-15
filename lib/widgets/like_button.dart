import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../constants.dart';
import '../widgets/customfont.dart';

class LikeButton extends StatefulWidget {
  final int
      initialLikes; // Initial number of likes, passed when the widget is created.

  const LikeButton({super.key, required this.initialLikes});

  @override
  _LikeButtonState createState() => _LikeButtonState();
}

class _LikeButtonState extends State<LikeButton> {
  late int likes; // Variable to store the current number of likes.
  bool isLiked = false; // Tracks whether the user has liked the post.

  @override
  void initState() {
    super.initState();
    likes = widget
        .initialLikes; // Initialize the likes with the value passed via the widget.
  }

  void toggleLike() {
    setState(() {
      isLiked = !isLiked; // Toggle the like state.
      likes += isLiked
          ? 1
          : -1; // Increment or decrement the like count based on the state.
    });
  }

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      onPressed: toggleLike, // When pressed, toggle the like state.
      icon: Icon(
        Icons.thumb_up_alt_outlined,
        color: isLiked
            ? FB_SECONDARY
            : FB_DARK_PRIMARY, // Change icon color based on like state.
      ),
      label: CustomFont(
        text: '$likes', // Display the current number of likes.
        fontSize:
            ScreenUtil().setSp(12), // Responsive font size using ScreenUtil.
        color: isLiked
            ? FB_SECONDARY
            : FB_DARK_PRIMARY, // Change text color based on like state.
      ),
    );
  }
}
