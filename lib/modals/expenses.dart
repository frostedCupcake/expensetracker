import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';
import 'package:intl/intl.dart';

const uuid = Uuid();
final formatter = DateFormat.yMd();

enum Category { work, travel, leisure, food }

const categoryIcons = {
  Category.food: Icons.lunch_dining,
  Category.work: Icons.work,
  Category.travel: Icons.flight_takeoff,
  Category.leisure: Icons.movie,
};

class Expenses {
  Expenses(
      {required this.title,
      required this.amount,
      required this.date,
      required this.category})
      : id = uuid.v4();

  final String id;
  final String title;
  final double amount;
  final DateTime date;
  final Category category;

  String get formattedDate {
    return formatter.format(date);
  }
}
