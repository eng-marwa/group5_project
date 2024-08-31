import 'package:flutter/material.dart';
import 'package:group5_project/core/di/module.dart';
import 'package:group5_project/movie_app.dart';

void main() {
  setupDependencies();
  runApp(const MovieApp());
}
