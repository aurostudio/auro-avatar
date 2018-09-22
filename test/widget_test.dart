import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:auro_avatar/auro_avatar.dart';

void main() {
  testWidgets('Verify InitialNameAvatar widget', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(
      StatefulBuilder(
        builder: (BuildContext context, StateSetter setState) {
          return MaterialApp(
            home: Material(
              child: Center(
                child: new Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      child: new InitialNameAvatar(
                        'John Doe',
                        circleAvatar: true,
                        borderColor: Colors.grey,
                        borderSize: 4.0,
                        backgroundColor: Colors.blue,
                        foregroundColor: Colors.white,
                        padding: 20.0,
                        textSize: 30.0,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );

    // Verify that platform version is retrieved.
    expect(
        find.byWidgetPredicate(
          (Widget widget) =>
              widget is InitialNameAvatar && widget.fullname.startsWith('John'),
        ),
        findsOneWidget);
  });
}
