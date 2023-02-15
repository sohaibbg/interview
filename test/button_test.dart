// ignore: depend_on_referenced_packages
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter/material.dart';
import 'package:interview/main.dart';

void main() {
  testWidgets(
    'Button 1 must be red or yellow',
    (tester) async {
      await tester.pumpWidget(const MyApp());
      try {
        expect(
          (tester.firstWidget(
            find.byType(ElevatedButton),
          ) as ElevatedButton)
              .style!
              .backgroundColor!
              .resolve(MaterialState.values.toSet()),
          Colors.red,
        );
      } catch (e) {
        expect(
          (tester.firstWidget(
            find.byType(ElevatedButton),
          ) as ElevatedButton)
              .style!
              .backgroundColor!
              .resolve(MaterialState.values.toSet()),
          Colors.yellow,
        );
      }
    },
  );
}
