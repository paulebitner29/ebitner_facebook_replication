import 'package:flutter/material.dart';

class profile_photos extends StatelessWidget {
  const profile_photos({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      //Photos Section
      primary: false,
      padding: const EdgeInsets.all(0),
      crossAxisSpacing: 0,
      mainAxisSpacing: 0,
      crossAxisCount: 3,
      children: <Widget>[
        Container(
          padding: const EdgeInsets.all(0),
          child:
              Image.network('assets/images/paulebitner.jpg', fit: BoxFit.cover),
        ),
        Container(
          padding: const EdgeInsets.all(0),
          child:
              Image.network('assets/images/paulebitner.jpg', fit: BoxFit.cover),
        ),
        Container(
          padding: const EdgeInsets.all(0),
          child:
              Image.network('assets/images/paulebitner.jpg', fit: BoxFit.cover),
        ),
        Container(
          padding: const EdgeInsets.all(0),
          child:
              Image.network('assets/images/pepitopost.jpg', fit: BoxFit.cover),
        ),
        Container(
          padding: const EdgeInsets.all(0),
          child:
              Image.network('assets/images/pepitopost.jpg', fit: BoxFit.cover),
        ),
        Container(
          padding: const EdgeInsets.all(0),
          child:
              Image.network('assets/images/pepitopost.jpg', fit: BoxFit.cover),
        ),
        Container(
          padding: const EdgeInsets.all(0),
          child:
              Image.network('assets/images/pepitopost.jpg', fit: BoxFit.cover),
        ),
        Container(
          padding: const EdgeInsets.all(0),
          child: Image.network('assets/images/boracay.jpg', fit: BoxFit.cover),
        ),
        Container(
          padding: const EdgeInsets.all(0),
          child: Image.network('assets/images/boracay.jpg', fit: BoxFit.cover),
        ),
        Container(
          padding: const EdgeInsets.all(0),
          child: Image.network('assets/images/boracay.jpg', fit: BoxFit.cover),
        ),
        Container(
          padding: const EdgeInsets.all(0),
          child: Image.network('assets/images/boracay.jpg', fit: BoxFit.cover),
        ),
        Container(
          padding: const EdgeInsets.all(0),
          child:
              Image.network('assets/images/jessicapost.png', fit: BoxFit.cover),
        ),
        Container(
          padding: const EdgeInsets.all(0),
          child:
              Image.network('assets/images/jessicapost.png', fit: BoxFit.cover),
        ),
        Container(
          padding: const EdgeInsets.all(0),
          child:
              Image.network('assets/images/jessicapost.png', fit: BoxFit.cover),
        ),
        Container(
          padding: const EdgeInsets.all(0),
          child:
              Image.network('assets/images/jessicapost.png', fit: BoxFit.cover),
        ),
        Container(
          padding: const EdgeInsets.all(0),
          child:
              Image.network('assets/images/jessicapost.png', fit: BoxFit.cover),
        ),
      ],
    );
  }
}
