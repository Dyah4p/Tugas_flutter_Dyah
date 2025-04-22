import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:stack1/main.dart'; 

void main() {
  testWidgets('Halaman login tampil dengan teks dan tombol', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());

    
    expect(find.text('Login'), findsOneWidget); 
    expect(find.byType(TextField), findsWidgets);
    expect(find.byType(ElevatedButton), findsWidgets);
  });
}
