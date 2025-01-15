import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rent/core/app_colors.dart';
import 'package:rent/cubit/rent_cubit.dart';
import 'package:rent/data/rent_data.dart';

class RentBody extends StatelessWidget {
  const RentBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RentCubit, RentState>(
      builder: (context, state) {
        if (state is RentLoading) {
          return const SliverToBoxAdapter(
            child: Center(
              child: CircularProgressIndicator(),
            ),
          );
        } else if (state is RentError) {
          return SliverToBoxAdapter(
            child: Center(
              child: Text(state.error),
            ),
          );
        } else if (state is RentSuccess) {
          final List<RentData> allRents =
              state.categories.expand((category) => category.data).toList();

          return SliverFixedExtentList(
            itemExtent: 450,
            delegate: SliverChildBuilderDelegate(childCount: allRents.length,
                (context, index) {
              final data = allRents[index];
              final categoryIndex = state.categories
                  .indexWhere((category) => category.data.contains(data));
              return Container(
                color: Colors.orange,
                child: const Column(
                  children: [],
                ),
              );
            }),
          );
        } else {
          return const SliverToBoxAdapter();
        }
      },
    );
  }
}

class _ImageBody extends StatelessWidget {
  final List<String> images;
  final bool isLike;
  final Function() onPressed;
  final Function() onTap;

  const _ImageBody(
      {super.key,
      required this.images,
      required this.isLike,
      required this.onPressed,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 350,
      child: GestureDetector(
        onTap: onTap,
        child: Stack(
          children: [],
        ),
      ),
    );
  }
}
