import 'package:flutter/material.dart';

class ExpensesForm extends StatelessWidget {
  final titleController = TextEditingController();
  final valueController = TextEditingController();

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
                    print(titleController.text);
                    print(valueController.text);
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
