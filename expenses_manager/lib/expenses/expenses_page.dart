import 'package:expenses_manager/expenses/expense.dart';
import 'package:expenses_manager/expenses/expenses_graph.dart';
import 'package:expenses_manager/expenses/expenses_list.dart';
import 'package:flutter/material.dart';

class ExpensesPage extends StatelessWidget {
  final _expensesList = [
    Expense(id: 't1', date: DateTime(2020), title: 'Air Conditioner', value: 1000.00),
    Expense(id: 't2', date: DateTime.now(), title: 'Light Bill', value: 211.30),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        ExpensesGraph(),
        ExpensesList(_expensesList),
      ],
    );
  }
}
