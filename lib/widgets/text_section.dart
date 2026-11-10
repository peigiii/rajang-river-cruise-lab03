import 'package:flutter/material.dart';

class TextSection extends StatelessWidget {
  const TextSection({required this.text, super.key});
  final String text;
  @override
  Widget build(BuildContext context) => Padding(
    padding: const EdgeInsets.symmetric(horizontal: 4),
    child: Text(
      text,
      style: Theme.of(context).textTheme.bodyLarge?.copyWith(height: 1.5),
    ),
  );
}
