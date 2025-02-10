import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:facebook_replication/constants.dart';
import 'package:cached_network_image/cached_network_image.dart';

class CommentButton extends StatefulWidget {
  const CommentButton({Key? key}) : super(key: key);

  @override
  _CommentButtonState createState() => _CommentButtonState();
}

class _CommentButtonState extends State<CommentButton> {
  final List<Map<String, String>> _comments = [];
  String _username = "Anonymous"; // Default username
  String _profileImageUrl =
      "https://images.pexels.com/photos/771742/pexels-photo-771742.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"; // Default profile image URL

  @override
  void initState() {
    super.initState();
    _loadUserData();
  }

  Future<void> _loadUserData() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      _username = prefs.getString('username') ?? "Anonymous";
      _profileImageUrl = prefs.getString('profileImageUrl') ??
          "https://images.pexels.com/photos/771742/pexels-photo-771742.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500";
    });
  }

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
                          final comment = _comments[index];
                          return ListTile(
                            leading: CircleAvatar(
                              backgroundImage: CachedNetworkImageProvider(
                                  comment['profileImageUrl'] ??
                                      _profileImageUrl),
                              radius: 16,
                            ),
                            title: Text(
                              comment['username'] ?? 'Anonymous',
                              style:
                                  const TextStyle(fontWeight: FontWeight.bold),
                            ),
                            subtitle: Text(comment['text'] ?? ''),
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
                      Navigator.pop(context);
                    },
                    child: const Text('Cancel'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      final comment = commentController.text.trim();
                      if (comment.isNotEmpty) {
                        setState(() {
                          _comments.add({
                            'username': _username,
                            'text': comment,
                            'profileImageUrl': _profileImageUrl,
                          });
                        });
                      }
                      Navigator.pop(context);
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
      onPressed: _showCommentSection,
      icon: const Icon(
        Icons.comment_outlined,
        color: FB_DARK_PRIMARY,
      ),
      label: RichText(
        text: TextSpan(
          children: [
            TextSpan(
              text: 'Comments ',
              style: const TextStyle(
                fontSize: 14,
                color: FB_DARK_PRIMARY,
              ),
            ),
            TextSpan(
              text: '(${_comments.length})',
              style: const TextStyle(
                fontSize: 14,
                color: FB_DARK_PRIMARY,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
