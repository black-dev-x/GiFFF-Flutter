import 'package:expenses_manager/expenses/expense.dart';
import 'package:flutter/material.dart';

class ExpenseCard extends StatelessWidget {
  final Expense _expense;
  ExpenseCard(this._expense);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(_expense.title),
    );
  }
}
