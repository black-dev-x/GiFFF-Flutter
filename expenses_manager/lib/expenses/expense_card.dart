import 'package:expenses_manager/expenses/expense.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class ExpenseCard extends StatelessWidget {
  final Expense _expense;
  ExpenseCard(this._expense);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Row(
        children: <Widget>[
          Container(
            margin: EdgeInsets.symmetric(
              horizontal: 15,
              vertical: 10,
            ),
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.purple,
                width: 2,
              ),
            ),
            padding: EdgeInsets.all(10),
            child: Text(
              'R\$ ${_expense.value.toStringAsFixed(2)}',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: Colors.purple,
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                _expense.title,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                DateFormat('d MMM y').format(_expense.date),
                style: TextStyle(
                  color: Colors.grey[700],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
