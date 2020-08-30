import 'package:expenses_manager/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

main() => runApp(ExpensesManager());

class ExpensesManager extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}
