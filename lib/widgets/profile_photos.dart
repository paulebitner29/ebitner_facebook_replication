import 'package:facebook_replication/widgets/custom_dialogs.dart';
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
            child: InkWell(
              onTap: () => customShowImageDialog(context,
                  imageUrl:
                      'https://cf.bstatic.com/xdata/images/hotel/max1024x768/486566798.jpg?k=a2a38bd1dfe49284e24eb1acfdadc4dffa72a261374ab5ec6ca9ed84ca7f74b0&o=&hp=1'),
              child: Image.network(
                  'https://cf.bstatic.com/xdata/images/hotel/max1024x768/486566798.jpg?k=a2a38bd1dfe49284e24eb1acfdadc4dffa72a261374ab5ec6ca9ed84ca7f74b0&o=&hp=1',
                  fit: BoxFit.cover),
            )),
        Container(
            padding: const EdgeInsets.all(0),
            child: InkWell(
              onTap: () => customShowImageDialog(context,
                  imageUrl:
                      'https://cf.bstatic.com/xdata/images/hotel/max1024x768/486566798.jpg?k=a2a38bd1dfe49284e24eb1acfdadc4dffa72a261374ab5ec6ca9ed84ca7f74b0&o=&hp=1'),
              child: Image.network(
                  'https://cf.bstatic.com/xdata/images/hotel/max1024x768/486566798.jpg?k=a2a38bd1dfe49284e24eb1acfdadc4dffa72a261374ab5ec6ca9ed84ca7f74b0&o=&hp=1',
                  fit: BoxFit.cover),
            )),
        Container(
            padding: const EdgeInsets.all(0),
            child: InkWell(
              onTap: () => customShowImageDialog(context,
                  imageUrl:
                      'https://cf.bstatic.com/xdata/images/hotel/max1024x768/486566798.jpg?k=a2a38bd1dfe49284e24eb1acfdadc4dffa72a261374ab5ec6ca9ed84ca7f74b0&o=&hp=1'),
              child: Image.network(
                  'https://cf.bstatic.com/xdata/images/hotel/max1024x768/486566798.jpg?k=a2a38bd1dfe49284e24eb1acfdadc4dffa72a261374ab5ec6ca9ed84ca7f74b0&o=&hp=1',
                  fit: BoxFit.cover),
            )),
        Container(
            padding: const EdgeInsets.all(0),
            child: InkWell(
              onTap: () => customShowImageDialog(context,
                  imageUrl: 'assets/images/paulebitner.jpg'),
              child: Image.network('assets/images/paulebitner.jpg',
                  fit: BoxFit.cover),
            )),
        Container(
            padding: const EdgeInsets.all(0),
            child: InkWell(
              onTap: () => customShowImageDialog(context,
                  imageUrl: 'assets/images/paulebitner.jpg'),
              child: Image.network('assets/images/paulebitner.jpg',
                  fit: BoxFit.cover),
            )),
        Container(
            padding: const EdgeInsets.all(0),
            child: InkWell(
              onTap: () => customShowImageDialog(context,
                  imageUrl: 'assets/images/paulebitner.jpg'),
              child: Image.network('assets/images/paulebitner.jpg',
                  fit: BoxFit.cover),
            )),
        Container(
            padding: const EdgeInsets.all(0),
            child: InkWell(
              onTap: () => customShowImageDialog(context,
                  imageUrl: 'assets/images/pepitopost.jpg'),
              child: Image.network('assets/images/pepitopost.jpg',
                  fit: BoxFit.cover),
            )),
        Container(
            padding: const EdgeInsets.all(0),
            child: InkWell(
              onTap: () => customShowImageDialog(context,
                  imageUrl: 'assets/images/pepitopost.jpg'),
              child: Image.network('assets/images/pepitopost.jpg',
                  fit: BoxFit.cover),
            )),
        Container(
            padding: const EdgeInsets.all(0),
            child: InkWell(
              onTap: () => customShowImageDialog(context,
                  imageUrl: 'assets/images/pepitopost.jpg'),
              child: Image.network('assets/images/pepitopost.jpg',
                  fit: BoxFit.cover),
            )),
        Container(
            padding: const EdgeInsets.all(0),
            child: InkWell(
              onTap: () => customShowImageDialog(context,
                  imageUrl: 'assets/images/pepitopost.jpg'),
              child: Image.network('assets/images/pepitopost.jpg',
                  fit: BoxFit.cover),
            )),
        Container(
            padding: const EdgeInsets.all(0),
            child: InkWell(
              onTap: () => customShowImageDialog(context,
                  imageUrl: 'assets/images/boracay.jpg'),
              child:
                  Image.network('assets/images/boracay.jpg', fit: BoxFit.cover),
            )),
        Container(
            padding: const EdgeInsets.all(0),
            child: InkWell(
              onTap: () => customShowImageDialog(context,
                  imageUrl: 'assets/images/boracay.jpg'),
              child:
                  Image.network('assets/images/boracay.jpg', fit: BoxFit.cover),
            )),
        Container(
            padding: const EdgeInsets.all(0),
            child: InkWell(
              onTap: () => customShowImageDialog(context,
                  imageUrl: 'assets/images/boracay.jpg'),
              child:
                  Image.network('assets/images/boracay.jpg', fit: BoxFit.cover),
            )),
        Container(
            padding: const EdgeInsets.all(0),
            child: InkWell(
              onTap: () => customShowImageDialog(context,
                  imageUrl: 'assets/images/boracay.jpg'),
              child:
                  Image.network('assets/images/boracay.jpg', fit: BoxFit.cover),
            )),
        Container(
            padding: const EdgeInsets.all(0),
            child: InkWell(
              onTap: () => customShowImageDialog(context,
                  imageUrl: 'assets/images/jessicapost.png'),
              child: Image.network('assets/images/jessicapost.png',
                  fit: BoxFit.cover),
            )),
        Container(
            padding: const EdgeInsets.all(0),
            child: InkWell(
              onTap: () => customShowImageDialog(context,
                  imageUrl: 'assets/images/jessicapost.png'),
              child: Image.network('assets/images/jessicapost.png',
                  fit: BoxFit.cover),
            )),
        Container(
            padding: const EdgeInsets.all(0),
            child: InkWell(
              onTap: () => customShowImageDialog(context,
                  imageUrl: 'assets/images/jessicapost.png'),
              child: Image.network('assets/images/jessicapost.png',
                  fit: BoxFit.cover),
            )),
        Container(
            padding: const EdgeInsets.all(0),
            child: InkWell(
              onTap: () => customShowImageDialog(context,
                  imageUrl: 'assets/images/jessicapost.png'),
              child: Image.network('assets/images/jessicapost.png',
                  fit: BoxFit.cover),
            )),
        Container(
            padding: const EdgeInsets.all(0),
            child: InkWell(
              onTap: () => customShowImageDialog(context,
                  imageUrl: 'assets/images/jessicapost.png'),
              child: Image.network('assets/images/jessicapost.png',
                  fit: BoxFit.cover),
            )),
        Container(
            padding: const EdgeInsets.all(0),
            child: InkWell(
              onTap: () => customShowImageDialog(context,
                  imageUrl: 'assets/images/jessicapost.png'),
              child: Image.network('assets/images/jessicapost.png',
                  fit: BoxFit.cover),
            )),
      ],
    );
  }
}
