import 'package:cached_network_image/cached_network_image.dart';
import 'package:facebook_replication/constants.dart';
import 'package:flutter/material.dart';
import '/widgets/customfont.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

customDialog(BuildContext context, {required title, required content}) {
  AlertDialog alertDialog = AlertDialog(
    title: Text(title),
    content: Text(content),
    actions: <Widget>[
      ElevatedButton(
        style: ElevatedButton.styleFrom(
            backgroundColor: FB_DARK_PRIMARY, foregroundColor: Colors.white),
        onPressed: () {
          Navigator.of(context).pop();
        },
        child: Text('Okay'),
      ),
    ],
  );

  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alertDialog;
    },
  );
}

customShowImageDialog(BuildContext context, {required String imageUrl}) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return Dialog(
        child: Stack(
          children: [
            // Content of the dialog
            SizedBox(
              width: 300.w, // Specify width if needed
              height: 300.h, // Specify height if needed
              child: Center(
                child:
                    imageUrl.startsWith('http') || imageUrl.startsWith('https')
                        ? CachedNetworkImage(
                            imageUrl: imageUrl,
                            progressIndicatorBuilder:
                                (context, url, downloadProgress) =>
                                    CircularProgressIndicator(
                                        value: downloadProgress.progress),
                            errorWidget: (context, url, error) =>
                                const Icon(Icons.error),
                          )
                        : Image.asset(
                            imageUrl, // Assuming imageUrl is the asset path here.
                            width: double.infinity,
                            height: double.infinity,
                          ),
              ),
            ),
            // Close button (X) in the upper-right corner
            Positioned(
              right: 8.0, // Adjust distance from the right
              top: 8.0, // Adjust distance from the top
              child: IconButton(
                onPressed: () {
                  Navigator.of(context).pop(); // Close the dialog
                },
                icon: const Icon(Icons.close, color: Colors.black), // 'X' icon
              ),
            ),
          ],
        ),
      );
    },
  );
}

customOptionDialog(BuildContext context,
    {required title, required content, required Function onYes}) {
  AlertDialog alertDialog = AlertDialog(
    title: CustomFont(
      text: title,
      fontSize: 30.sp,
      color: Colors.black,
    ),
    content: CustomFont(
      text: content,
      fontSize: 18.sp,
      color: Colors.black,
    ),
    actions: <Widget>[
      OutlinedButton(
        onPressed: () {
          Navigator.of(context).pop();
        },
        child: CustomFont(
          text: 'No',
          color: Colors.black,
          fontSize: 16.sp,
        ),
      ),
      ElevatedButton(
        child: CustomFont(
          text: 'Yes',
          color: FB_TEXT_COLOR_WHITE,
          fontSize: 16.sp,
        ),
        style: ElevatedButton.styleFrom(
            backgroundColor: FB_DARK_PRIMARY, foregroundColor: Colors.white),
        onPressed: () {
          Navigator.of(context).pop();
          onYes();
        },
      ),
    ],
  );
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alertDialog;
    },
  );
}
