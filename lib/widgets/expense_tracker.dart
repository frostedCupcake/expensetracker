import 'package:expensetracker/widgets/expenses_list/expense_list.dart';
import 'package:expensetracker/modals/expenses.dart';
import 'package:flutter/material.dart';

class ExpenseTracker extends StatefulWidget {
  const ExpenseTracker({super.key});

  @override
  State<ExpenseTracker> createState() {
    return _ExpenseTracker();
  }
}

class _ExpenseTracker extends State<ExpenseTracker> {
  final List<Expenses> registeredExpenses = [
    Expenses(
      title: "Flutter Course",
      amount: 19.99,
      date: DateTime.now(),
      category: Category.work,
    ),
    Expenses(
      title: "Vada",
      amount: 9.99,
      date: DateTime.now(),
      category: Category.food,
    )
  ];

  void _openAddExpenseOverlay() {
    showModalBottomSheet(
      context: context,
      builder: (ctx) => const Text('hwllo'),
    );
  }

  @override
  Widget build(context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Expense Tracker'),
        actions: [
          IconButton(
            onPressed: _openAddExpenseOverlay,
            icon: const Icon(Icons.add),
          )
        ],
      ),
      body: Column(
        children: [
          const Text('the Chart'),
          Expanded(
            child: ExpenseList(expenses: registeredExpenses),
          )
        ],
      ),
    );
  }
}
