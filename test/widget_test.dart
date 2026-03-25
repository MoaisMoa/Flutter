// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:layout_widget/screens/listview_screen.dart';

void main() {
  testWidgets('ListviewScreen 기본 렌더링 테스트', (WidgetTester tester) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: ListviewScreen(),
      ),
    );

    expect(find.text('리스트 뷰'), findsOneWidget);
    expect(find.text('상품 제목 1'), findsOneWidget);
    expect(find.byType(ListTile), findsNWidgets(10));
  });
}
