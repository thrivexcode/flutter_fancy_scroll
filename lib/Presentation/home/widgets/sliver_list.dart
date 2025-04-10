import 'package:flutter/material.dart';
import 'package:flutter_fancy_scroll/core/components/custom_card.dart';
import 'package:flutter_fancy_scroll/core/dummy/destination_dummy.dart';

class CustomSliverList extends StatelessWidget {
  const CustomSliverList({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (BuildContext context, int index) {
          final item = destinationItems[index];

          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: CustomCard(destination: item),
          );
        },
        childCount: destinationItems.length,
      ),
    );
  }
}
