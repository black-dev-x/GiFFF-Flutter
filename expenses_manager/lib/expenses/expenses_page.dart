import 'package:expenses_manager/expenses/expense.dart';
import 'package:expenses_manager/expenses/expenses_graph.dart';
import 'package:expenses_manager/expenses/expenses_list.dart';
import 'package:flutter/material.dart';

import 'expenses_form.dart';

class ExpensesPage extends StatefulWidget {
  @override
  _ExpensesPageState createState() => _ExpensesPageState();
}

class _ExpensesPageState extends State<ExpensesPage> {
  final _expensesList = [
    Expense(id: 't1', date: DateTime(2020), title: 'Air Conditioner', value: 1000.00),
    Expense(id: 't2', date: DateTime.now(), title: 'Light Bill', value: 211.30),
  ];

  _addExpense(String title, double value) {
    final newExpense = Expense(id: '', title: title, value: value, date: DateTime.now());
    setState(() {
      _expensesList.add(newExpense);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        ExpensesGraph(),
        ExpensesList(_expensesList),
        ExpensesForm(_addExpense),
      ],
    );
  }
}
