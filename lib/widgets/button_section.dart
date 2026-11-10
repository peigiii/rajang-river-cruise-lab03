import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ButtonSection extends StatelessWidget {
  const ButtonSection({super.key});
  @override
  Widget build(BuildContext context) => Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      TextButton.icon(
        onPressed: () => _copy(context, '+6084333333', 'Phone number copied'),
        icon: const Icon(Icons.call),
        label: const Text('CALL'),
      ),
      TextButton.icon(
        onPressed: () =>
            _copy(context, 'Sibu, Sarawak, Malaysia', 'Location copied'),
        icon: const Icon(Icons.near_me),
        label: const Text('ROUTE'),
      ),
      TextButton.icon(
        onPressed: () => _copy(
          context,
          'Rajang River Cruise - Sibu, Sarawak',
          'Cruise details copied',
        ),
        icon: const Icon(Icons.share),
        label: const Text('SHARE'),
      ),
    ],
  );
  Future<void> _copy(BuildContext context, String value, String message) async {
    await Clipboard.setData(ClipboardData(text: value));
    if (context.mounted) {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text(message)));
    }
  }
}
