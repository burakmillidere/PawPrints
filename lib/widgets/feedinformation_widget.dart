import 'package:flutter/material.dart';

class FeedInformationWidget extends StatelessWidget {
  final String imageAsset;
  final String title;

  const FeedInformationWidget({
    Key? key,
    required this.imageAsset,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              imageAsset,
              fit: BoxFit.cover,
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce gravida metus at erat euismod interdum. Donec ut posuere tellus, eget egestas est. Morbi vestibulum nibh vel velit rhoncus dapibus. Vivamus vestibulum mi vel massa tristique, non tristique metus euismod. Sed vel sodales lectus. Sed non tellus id lorem pharetra sodales. Nulla facilisi. Sed fermentum ornare ante sed vehicula. Nulla dapibus dolor vel nisi tincidunt, non efficitur metus sagittis. Cras sit amet urna ut massa posuere bibendum nec eget enim. Praesent eget mi vel tellus elementum vehicula vel vel quam. In nec sapien felis. Donec ac felis enim. Nam euismod vel elit sit amet vehicula. Pellentesque mollis sapien dolor, a euismod odio commodo sed.',
                style: TextStyle(
                  fontSize: 18.0,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
