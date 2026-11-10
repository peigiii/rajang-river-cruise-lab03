import 'package:flutter/material.dart';
import '../viewmodels/cruise_view_model.dart';
import '../widgets/image_section.dart';
import '../widgets/title_section.dart';
import '../widgets/button_section.dart';
import '../widgets/text_section.dart';
import '../widgets/preference_section.dart';

class CruiseScreen extends StatelessWidget {
  const CruiseScreen({required this.model, super.key});
  final CruiseViewModel model;
  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(title: const Text('Rajang River Cruise')),
    body: SafeArea(
      child: OrientationBuilder(
        builder: (context, orientation) => orientation == Orientation.landscape
            ? Row(
                children: [
                  const Expanded(flex: 5, child: ImageSection(fill: true)),
                  Expanded(flex: 6, child: ListView(children: [_details()])),
                ],
              )
            : ListView(children: [const ImageSection(), _details()]),
      ),
    ),
  );
  Widget _details() => Center(
    child: ConstrainedBox(
      constraints: const BoxConstraints(maxWidth: 650),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: AnimatedBuilder(
          animation: model,
          builder: (context, child) => Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              TitleSection(model: model),
              const SizedBox(height: 16),
              const ButtonSection(),
              const SizedBox(height: 16),
              TextSection(text: model.cruise.description),
              const SizedBox(height: 20),
              PreferenceSection(model: model),
            ],
          ),
        ),
      ),
    ),
  );
}
