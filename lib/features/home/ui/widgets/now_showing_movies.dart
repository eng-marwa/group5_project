import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:group5_project/core/common_widgets/movie_section.dart';
import 'package:group5_project/core/common_widgets/rating_widget.dart';
import 'package:group5_project/core/di/module.dart';
import 'package:group5_project/core/network/api_exception.dart';
import 'package:group5_project/core/network/constants.dart';
import 'package:group5_project/features/home/logic/now_showing/movie_cubit.dart';
import 'package:group5_project/features/home/model/movie_response.dart';
import 'package:group5_project/gen/colors.gen.dart';

import '../../../../core/themes/text_styles.dart';
import '../../../../gen/assets.gen.dart';
import '../../logic/now_showing/movie_state.dart';

class NowShowingMovies extends StatelessWidget {
  const NowShowingMovies({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<NowShowingCubit>(
      create: (_) => getIt<NowShowingCubit>()..emitStates(),
      child: Padding(
          padding:
              EdgeInsetsDirectional.only(start: 24.w, end: 24.w, top: 16.h),
          child: SizedBox(
            height: 365.h,
            child: Column(
              children: [
                const MovieSection('Now Showing'),
                SizedBox(
                  height: 16.h,
                ),
                SizedBox(
                    height: 320.h,
                    child: BlocBuilder<NowShowingCubit, NowMovieState>(
                      builder: (context, state) {
                        if (state is NowShowingLoading) {
                          return const Center(
                              child: CircularProgressIndicator());
                        } else if (state is NowShowingLoaded) {
                          MovieResponse response = state.data as MovieResponse;
                          List<Result> results = response.results;
                          return ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: results.length,
                              itemBuilder: (context, index) => Padding(
                                    padding:
                                        EdgeInsetsDirectional.only(end: 16.0.w),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          height: 212.h,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(8.r),
                                              image: DecorationImage(
                                                  image: NetworkImage(
                                                      '$imageUrl${results[index].posterPath}'),
                                                  fit: BoxFit.cover)),
                                          width: 143.w,
                                        ),
                                        SizedBox(
                                          height: 12.h,
                                        ),
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
                                        RatingWidget(
                                            results[index].voteAverage!),
                                      ],
                                    ),
                                  ));
                        } else if (state is NowShowingError) {
                          ApiException error = state.error;
                          return Text(error.statusMessage ??
                              'Failed to fetch now showing movies');
                        } else {
                          return SizedBox.shrink();
                        }
                      },
                    ))
              ],
            ),
          )),
    );
  }
}
