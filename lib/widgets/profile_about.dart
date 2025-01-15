// Suggested code may be subject to a license. Learn more: ~LicenseLog:1570459038.
import 'package:flutter/material.dart';

class profile_about extends StatelessWidget {
  const profile_about({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: ListView(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        children: [
          Container(
            decoration: BoxDecoration(
              border: Border(bottom: BorderSide(color: Colors.grey.shade300)),
            ),
            child: const ListTile(
              leading: Icon(Icons.work),
              title: Text('Work'),
              subtitle: Text('Works at Bikini Bottom'),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              border: Border(bottom: BorderSide(color: Colors.grey.shade300)),
            ),
            child: const ListTile(
              leading: Icon(Icons.school),
              title: Text('Education'),
              subtitle: Text('National University Phillipines'),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              border: Border(bottom: BorderSide(color: Colors.grey.shade300)),
            ),
            child: const ListTile(
              leading: Icon(Icons.house),
              title: Text('Lives in'),
              subtitle: Text('Manila, Philippines'),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              border: Border(bottom: BorderSide(color: Colors.grey.shade300)),
            ),
            child: const ListTile(
              leading: Icon(Icons.location_on),
              title: Text('From'),
              subtitle: Text('Manila, Philippines'),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              border: Border(bottom: BorderSide(color: Colors.grey.shade300)),
            ),
            child: const ListTile(
              leading: Icon(Icons.phone),
              title: Text('Mobile'),
              subtitle: Text('+639513186682'),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              border: Border(bottom: BorderSide(color: Colors.grey.shade300)),
            ),
            child: const ListTile(
              leading: Icon(Icons.favorite),
              title: Text('Relationship'),
              subtitle: Text('In a Relatioship with Igay'),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              border: Border(bottom: BorderSide(color: Colors.grey.shade300)),
            ),
            child: const ListTile(
              leading: Icon(Icons.person),
              title: Text('About Me'),
              subtitle: Text('Anonymous'),
            ),
          ),
        ],
      ),
    );
  }
}
