import "package:flutter/material.dart";

class NewExpenses extends StatefulWidget {
  const NewExpenses({super.key});

  @override
  State<StatefulWidget> createState() {
    return _NewExpenseState();
  }
}

class _NewExpenseState extends State<NewExpenses> {
  var _enteredTitle = '';

  void _saveTitleInut(String inputValue) {
    _enteredTitle = inputValue;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          TextField(
            onChanged: _saveTitleInut,
            maxLength: 50,
            decoration: const InputDecoration(label: Text('Title')),
          ),
          Row(
            children: [
              ElevatedButton(
                  onPressed: () {
                    print(_enteredTitle);
                  },
                  child: const Text('Save Expense'))
            ],
          ),
        ],
      ),
    );
  }
}
