import 'package:expenses_manager/expenses/expenses_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Expenses Manager'),
        ),
        body: ExpensesPage());
  }
}
