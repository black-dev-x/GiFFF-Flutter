import 'package:expenses_manager/expenses/expense.dart';
import 'package:expenses_manager/expenses/expense_card.dart';
import 'package:flutter/material.dart';

class ExpensesList extends StatelessWidget {
  final List<Expense> _expenses;

  ExpensesList(this._expenses);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: _expenses.map((expense) => ExpenseCard(expense)).toList(),
    );
  }
}
