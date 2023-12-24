import 'package:flutter/material.dart';

class SearchInput extends StatelessWidget {
  final String ? title;
  final TextEditingController controller;
  const SearchInput({
    super.key, this.title, required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey.withOpacity(0.5),
        borderRadius: BorderRadius.circular(10),
      ),
      height: 45,
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
          prefixIcon: const Icon(Icons.search),
          border: InputBorder.none,
          hintText: title,
        ),
      ),
    );
  }
}