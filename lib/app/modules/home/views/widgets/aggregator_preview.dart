import 'package:flutter/material.dart';

class AggregatorPreview extends StatelessWidget {
  const AggregatorPreview({
    super.key,
    required this.name,
    required this.image,
    required this.onTap,
  });

  final String name;
  final String image;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onTap(),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: CircleAvatar(
              radius: 40,
              backgroundImage: NetworkImage(image, scale: 1000),
            ),
          ),
          Text(name),
        ],
      ),
    );
  }
}
