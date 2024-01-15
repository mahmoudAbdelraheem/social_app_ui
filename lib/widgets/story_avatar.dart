import 'package:flutter/material.dart';

class StoryAvatar extends StatelessWidget {
  final String url;
  const StoryAvatar({
    super.key,
    required this.url,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: CircleAvatar(
        radius: 38,
        backgroundColor: Colors.red,
        child: CircleAvatar(
          radius: 35,
          backgroundImage: NetworkImage(url),
        ),
      ),
    );
  }
}
