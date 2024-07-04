import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:uashakim_crypto/main.dart';

void main() {
  testWidgets('Counter increments smoke test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const MyApp());

    // Verify that our app starts with loading indicator.
    expect(find.byType(CircularProgressIndicator), findsOneWidget);

    // Wait for the data to be fetched and the list to be built.
    await tester.pumpAndSettle();

    // Verify that our list contains some items.
    expect(find.byType(ListTile), findsWidgets);
  });
}
