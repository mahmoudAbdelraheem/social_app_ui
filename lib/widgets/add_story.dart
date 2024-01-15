import 'package:flutter/material.dart';

class AddStoryAvatar extends StatelessWidget {
  final String url;
  const AddStoryAvatar({
    super.key,
    required this.url,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CircleAvatar(
          radius: 35,
          backgroundImage: NetworkImage(url),
        ),
        const Positioned(
          bottom: 0,
          right: 0,
          child: CircleAvatar(
            radius: 10,
            child: Icon(
              Icons.add,
              color: Colors.white,
              size: 20,
            ),
          ),
        ),
      ],
    );
  }
}
