import 'package:flutter/material.dart';
import '../viewmodels/cruise_view_model.dart';

class TitleSection extends StatelessWidget {
  const TitleSection({required this.model, super.key});
  final CruiseViewModel model;
  @override
  Widget build(BuildContext context) => Row(
    children: [
      Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              model.cruise.name,
              style: Theme.of(
                context,
              ).textTheme.headlineSmall?.copyWith(fontWeight: FontWeight.bold),
            ),
            Text(model.cruise.location),
          ],
        ),
      ),
      IconButton(
        tooltip: model.starred ? 'Remove star' : 'Add star',
        onPressed: model.toggleStar,
        icon: Icon(
          model.starred ? Icons.star : Icons.star_border,
          color: Colors.amber.shade700,
        ),
      ),
      Text('${model.starCount}'),
    ],
  );
}
