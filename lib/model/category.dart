import 'package:flutter/material.dart';

class Category {
  final String id;
  final String? title;
  final Color? color;

  const Category({
    required this.id,
    this.title,
    this.color,
  });
}
