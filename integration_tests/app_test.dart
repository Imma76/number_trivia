
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:number_trivia/core/model/locator_model.dart';
import 'package:number_trivia/main.dart';

void main()async{

  setUpLocator();
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
  testWidgets("testing trivia", (WidgetTester tester)async{
    await tester.pumpWidget(const MyApp());
    await tester.pumpAndSettle();
    expect(find.byType(TextField), findsOneWidget);
    expect(find.byType(ElevatedButton), findsOneWidget);
    await tester.enterText(find.byType(TextField), "40");
    await tester.tap(find.byType(ElevatedButton));
    await tester.pumpAndSettle();
    await Future.delayed(Duration(seconds: 3));
    expect(find.byKey(Key("trivia-key")), findsOneWidget);

  });
}

