import 'package:flutter/material.dart';

class ExpensesForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 10),
        child: Column(
          children: <Widget>[
            TextField(
              decoration: InputDecoration(labelText: 'Title:'),
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Value \$:'),
            ),
            Row(
              children: <Widget>[
                FlatButton(
                  child: Text('Register Expense'),
                  onPressed: () => {},
                  textColor: Colors.purple,
                ),
              ],
              mainAxisAlignment: MainAxisAlignment.end,
            )
          ],
        ),
      ),
    );
  }
}
