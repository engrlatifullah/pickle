import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:pickle/screens/bottom_nav_bar/search_screen/widget/seatch_input.dart';
import 'package:pickle/themes/app_colors.dart';
import 'package:pickle/utils/app_text_style.dart';
import 'package:pickle/utils/globel.dart';
import 'package:pickle/widgets/custom_text_input.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  final TextEditingController searchController = TextEditingController();

  @override
  void dispose() {
    searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 25,
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            children: [
              Expanded(
                  child: SearchInput(
                      controller: searchController, title: "Search")),
              const SizedBox(width: 20),
              TextButton(
                  onPressed: () {},
                  child: Text(
                    "Search",
                    style: AppTextStyles.mediumStyle
                        .copyWith(color: AppColors.primaryColor),
                  ))
            ],
          ),
        ),
      ],
    );
  }
}
