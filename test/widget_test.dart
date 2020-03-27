import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:test_widget/main.dart';

void main() {
  testWidgets('Counter increments smoke test', (WidgetTester tester) async {
    await tester.pumpWidget(MyApp());

    var textField = find.byType(TextField);

    expect(textField, findsOneWidget);
    await tester.enterText(textField, "Hello World");
    expect(find.text("Hello World"), findsWidgets);

    var button = find.text("Send");
    expect(button, findsOneWidget);
    await tester.tap(button);
    await tester.pump();

    expect(find.text("Hello World"), findsWidgets);
  });
}
