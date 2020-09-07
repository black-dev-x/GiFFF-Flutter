import 'package:flutter/material.dart';

class ExpensesForm extends StatelessWidget {
  final titleController = TextEditingController();
  final valueController = TextEditingController();
  final void Function(String, double) addExpense;

  ExpensesForm(this.addExpense);

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
              controller: titleController,
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Value \$:'),
              controller: valueController,
            ),
            Row(
              children: <Widget>[
                FlatButton(
                  child: Text('Register Expense'),
                  onPressed: () {
                    final title = titleController.text;
                    final value = double.tryParse(valueController.text) ?? 0;
                    addExpense(title, value);
                  },
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
