import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../viewmodels/cruise_view_model.dart';

class PreferenceSection extends StatelessWidget {
  const PreferenceSection({required this.model, super.key});
  final CruiseViewModel model;
  @override
  Widget build(BuildContext context) => Card(
    child: Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            'Plan your visit',
            style: Theme.of(context).textTheme.titleLarge,
          ),
          ListTile(
            contentPadding: EdgeInsets.zero,
            leading: const Icon(Icons.calendar_month),
            title: const Text('Visit date'),
            subtitle: Text(
              model.visitDate == null
                  ? 'Tap to choose a date'
                  : DateFormat.yMMMMd().format(model.visitDate!),
            ),
            trailing: const Icon(Icons.chevron_right),
            onTap: () => _pickDate(context),
          ),
          DropdownButtonFormField<String>(
            initialValue: model.selectedPackage,
            isExpanded: true,
            decoration: const InputDecoration(
              labelText: 'Cruise package',
              prefixIcon: Icon(Icons.directions_boat),
              border: OutlineInputBorder(),
            ),
            items: model.cruise.packages
                .map((name) => DropdownMenuItem(value: name, child: Text(name)))
                .toList(),
            onChanged: (value) {
              if (value != null) model.choosePackage(value);
            },
          ),
          SwitchListTile(
            contentPadding: EdgeInsets.zero,
            secondary: const Icon(Icons.dark_mode_outlined),
            title: const Text('Dark mode'),
            value: model.darkMode,
            onChanged: model.toggleTheme,
          ),
        ],
      ),
    ),
  );
  Future<void> _pickDate(BuildContext context) async {
    final now = DateTime.now();
    final first = DateTime(now.year, now.month, now.day);
    final selected = await showDatePicker(
      context: context,
      initialDate: model.visitDate ?? first,
      firstDate: first,
      lastDate: DateTime(now.year + 2, now.month, now.day),
    );
    if (selected != null) model.chooseDate(selected);
  }
}
