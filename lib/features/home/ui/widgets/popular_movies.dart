import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:group5_project/core/common_widgets/rating_widget.dart';
import 'package:group5_project/core/di/module.dart';
import 'package:group5_project/core/network/api_exception.dart';
import 'package:group5_project/core/network/constants.dart';
import 'package:group5_project/features/home/logic/popular/popular_cubit.dart';
import 'package:group5_project/features/home/logic/popular/popular_state.dart';
import 'package:group5_project/features/home/model/movie_response.dart';
import 'package:group5_project/gen/colors.gen.dart';

import '../../../../core/common_widgets/movie_section.dart';
import '../../../../core/themes/text_styles.dart';
import '../../../../gen/assets.gen.dart';

class PopularMovies extends StatelessWidget {
  const PopularMovies({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<PopularCubit>(
        create: (_) => getIt<PopularCubit>()..emitStates(),
        child: Padding(
          padding:
              EdgeInsetsDirectional.only(start: 24.w, end: 24.h, top: 16.h),
          child: Column(
            children: [
              const MovieSection('Popular'),
              SizedBox(
                height: 16.h,
              ),
              BlocBuilder<PopularCubit, PopularMovieState>(
                builder: (context, state) {
                  if (state is PopularMovieLoading) {
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  } else if (state is PopularMovieLoaded) {
                    MovieResponse response = state.data as MovieResponse;
                    List<Result> results = response.results;
                    return ListView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: 5,
                      itemBuilder: (context, index) => Padding(
                        padding: EdgeInsetsDirectional.only(bottom: 16.0.h),
                        child: Row(
                          children: [
                            Container(
                              margin: EdgeInsetsDirectional.only(end: 16.w),
                              height: 128.h,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8.r),
                                  image: DecorationImage(
                                      image: NetworkImage(
                                          '$imageUrl${results[index].posterPath}'),
                                      fit: BoxFit.cover)),
                              width: 85.w,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  width: 139.w,
                                  child: Text(
                                    results[index].originalTitle!,
                                    maxLines: 2,
                                    softWrap: true,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyles.movieTitle,
                                  ),
                                ),
                                SizedBox(
                                  height: 8.h,
                                ),
                                RatingWidget(results[index].voteAverage!),
                                Padding(
                                  padding:
                                      const EdgeInsetsDirectional.symmetric(
                                          vertical: 8),
                                  child: Wrap(
                                    children: List.generate(
                                        results[index].genreIds.length > 3
                                            ? 3
                                            : results[index].genreIds.length,
                                        (i) => Container(
                                              margin:
                                                  EdgeInsetsDirectional.only(
                                                      end: 8.w),
                                              padding: EdgeInsetsDirectional
                                                  .symmetric(
                                                      vertical: 4.h,
                                                      horizontal: 8.w),
                                              decoration: BoxDecoration(
                                                color: ColorName.tagColor,
                                                borderRadius:
                                                    BorderRadius.circular(20.r),
                                              ),
                                              child: Text(
                                                '${results[index].genreIds[i]}',
                                                style: TextStyles.tag,
                                              ),
                                            )),
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Assets.images.clock.svg(),
                                    SizedBox(
                                      width: 3.w,
                                    ),
                                    Text(
                                      results[index].releaseDate!,
                                      style: TextStyles.ratingText,
                                    )
                                  ],
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    );
                  } else if (state is PopularMovieError) {
                    ApiException error = state.error;
                    return Center(
                      child: Text(error.statusMessage ??
                          ' Failed to fetch popular movies'),
                    );
                  } else {
                    return const SizedBox.shrink();
                  }
                },
              )
            ],
          ),
        ));
  }
}
