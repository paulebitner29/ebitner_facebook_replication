import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:facebook_replication/constants.dart';

// Define the FB_DARK_PRIMARY color

class CommentButton extends StatefulWidget {
  const CommentButton({Key? key}) : super(key: key);

  @override
  _CommentButtonState createState() => _CommentButtonState();
}

class _CommentButtonState extends State<CommentButton> {
  final List<String> _comments = []; // List to store comments

  void _showCommentSection() {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (context) {
        final TextEditingController commentController = TextEditingController();

        return Padding(
          padding: EdgeInsets.only(
            bottom: MediaQuery.of(context).viewInsets.bottom,
            left: 16,
            right: 16,
            top: 16,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text(
                'Comments',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
              const Divider(),
              Expanded(
                child: _comments.isEmpty
                    ? const Center(child: Text('No comments yet.'))
                    : ListView.builder(
                        itemCount: _comments.length,
                        itemBuilder: (context, index) {
                          return ListTile(
                            leading: const CircleAvatar(
                              backgroundImage:
                                  AssetImage('assets/images/paulebitner.jpg'),
                              radius: 16,
                            ),
                            title: Text(_comments[index]),
                          );
                        },
                      ),
              ),
              TextField(
                controller: commentController,
                decoration: InputDecoration(
                  hintText: 'Write a comment...',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                    onPressed: () {
                      Navigator.pop(context); // Close the modal
                    },
                    child: const Text('Cancel'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      final comment = commentController.text.trim();
                      if (comment.isNotEmpty) {
                        setState(() {
                          _comments.add(comment); // Add comment to the list
                        });
                      }
                      Navigator.pop(context); // Close the modal
                    },
                    child: const Text('Post'),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      onPressed: _showCommentSection, // Open comment section
      icon: Icon(
        Icons.comment_outlined,
        color: FB_DARK_PRIMARY, // Apply FB_DARK_PRIMARY color to the icon
      ),
      label: Text(
        'Comments (${_comments.length})',
        style: TextStyle(
            color: FB_DARK_PRIMARY), // Apply FB_DARK_PRIMARY color to the text
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      appBar: AppBar(title: const Text('Comment Feature')),
      body: const Center(child: CommentButton()),
    ),
  ));
}
