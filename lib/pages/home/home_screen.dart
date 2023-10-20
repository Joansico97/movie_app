import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:movie_app/pages/home/widgets/widgets.dart';
import 'package:movie_app/widgets/widgets.dart';
import 'package:movie_app/core/utils/utils.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: const CustomAppBar(),
      // extendBodyBehindAppBar: true,
      body: Container(
        height: size.fullHeight(context),
        width: size.fullWidth(context),
        padding: size.symmetric(context, .05, .01),
        child: Column(
          children: [
            Container(
              height: size.height(context, .1),
              width: size.fullWidth(context),
              alignment: Alignment.centerLeft,
              child: const Text(
                'Popular Movies',
                style: AppStyles.heading2,
              ),
            ),
            SizedBox(height: size.height(context, .01)),
            SizedBox(
              height: size.height(context, .3),
              width: size.fullWidth(context),
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 10,
                itemBuilder: (context, index) {
                  return MovieCard(
                    index: index,
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
