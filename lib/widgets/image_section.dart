import 'package:flutter/material.dart';

class ImageSection extends StatelessWidget {
  const ImageSection({this.fill = false, super.key});
  final bool fill;
  @override
  Widget build(BuildContext context) {
    final image = Stack(
      fit: StackFit.expand,
      children: [
      Image.asset(
        'assets/images/rajang_river_sibu.jpg',
          fit: BoxFit.cover,
        ),
        const Positioned(
          left: 20,
          bottom: 20,
          child: Chip(
            label: Text('Discover the Rajang'),
            avatar: Icon(Icons.directions_boat),
          ),
        ),
      ],
    );
    return fill ? image : SizedBox(height: 250, child: image);
  }
}
