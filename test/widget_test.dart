import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:rajang_river_cruise/main.dart';

void main() {
  testWidgets('cruise screen shows booking controls and star count', (
    tester,
  ) async {
    await tester.pumpWidget(const RajangCruiseApp());
    expect(find.text('Visit date'), findsOneWidget);
    expect(find.text('Cruise package'), findsOneWidget);
    expect(find.byType(SwitchListTile), findsOneWidget);
    await tester.tap(find.byTooltip('Add star'));
    await tester.pump();
    expect(find.text('42'), findsOneWidget);
  });
}
