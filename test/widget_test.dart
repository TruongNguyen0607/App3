import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:single_button_app/main.dart';

void main() {
  testWidgets('Button stays enabled and does nothing when pressed', (
    tester,
  ) async {
    await tester.pumpWidget(const MyApp());

    final button = find.byType(ElevatedButton);
    expect(button, findsOneWidget);
    expect(tester.widget<ElevatedButton>(button).onPressed, isNotNull);

    await tester.tap(button);
    await tester.pumpAndSettle();

    expect(button, findsOneWidget);
    expect(find.text('Press me'), findsOneWidget);
    expect(tester.takeException(), isNull);
  });
}
