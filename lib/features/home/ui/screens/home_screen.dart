import 'package:flutter/material.dart';
import 'package:group5_project/gen/colors.gen.dart';

import '../widgets/movie_app_bar.dart';
import '../widgets/now_showing_movies.dart';
import '../widgets/popular_movies.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: ColorName.bgColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [MovieAppBar(), NowShowingMovies(), PopularMovies()],
          ),
        ),
      ),
    );
  }
}
