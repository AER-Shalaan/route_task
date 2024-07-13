import 'package:flutter/material.dart';
import '../../../../../core/utils/colors_manager.dart';

class SearchTextField extends StatelessWidget {
  const SearchTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: 'What do you search for?',
        hintStyle: Theme.of(context).textTheme.titleLarge?.copyWith(
            fontWeight: FontWeight.w300,
            color: ColorsManager.headlineColor.withOpacity(0.6)),
        prefixIcon: Icon(Icons.search_rounded, color: Theme.of(context).colorScheme.primary, size: 30,),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30.0),
          borderSide: BorderSide(color: Theme.of(context).colorScheme.primary , width: 1),
        ),
        disabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30.0),
            borderSide: BorderSide(color: Theme.of(context).colorScheme.primary , width: 1)),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30.0),
            borderSide: BorderSide(color: Theme.of(context).colorScheme.primary , width: 1)),
      ),
    );
  }
}
