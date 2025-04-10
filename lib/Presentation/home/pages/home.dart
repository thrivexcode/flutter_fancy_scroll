import 'package:flutter/material.dart';
import 'package:flutter_fancy_scroll/Presentation/home/widgets/sliver_app_bar.dart';
import 'package:flutter_fancy_scroll/Presentation/home/widgets/sliver_list.dart';
import 'package:flutter_fancy_scroll/Presentation/home/widgets/sliver_search.dart';
import 'package:flutter_fancy_scroll/core/constants/colors.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final TextEditingController _searchController = TextEditingController();
  final ScrollController _scrollController = ScrollController();
  double _scrollOffset = 0.0;

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(() {
      setState(() {
        _scrollOffset = _scrollController.offset;
      });
    });
  }

  @override
  void dispose() {
    _searchController.dispose();
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightGray,
      body: CustomScrollView(
        controller: _scrollController,
        slivers: [
          CustomSliverAppBar(),
          CustomSliverSearch(
            controller: _searchController,
            scrollOffset: _scrollOffset,
          ),
          CustomSliverList(),
        ],
      ),
    );
  }
}
