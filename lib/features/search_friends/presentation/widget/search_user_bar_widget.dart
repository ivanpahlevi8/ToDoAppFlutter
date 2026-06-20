import 'package:flutter/material.dart';

class SearchUserBarWidget extends StatelessWidget {
  final TextEditingController textEditing;
  final Function(String) onSearch;

  const SearchUserBarWidget({
    super.key,
    required this.textEditing,
    required this.onSearch,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: TextFormField(
            controller: textEditing,
            keyboardType: TextInputType.text,
            textInputAction: TextInputAction.search,
            onFieldSubmitted: (value) {
              onSearch(value);
            },
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w900,
              fontSize: 18,
            ),
            decoration: InputDecoration(
              floatingLabelStyle: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w900,
                fontSize: 22,
              ),
              labelText: "Username",
              labelStyle: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w900,
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8.0),
                borderSide: const BorderSide(color: Colors.black, width: 1.3),
              ),
              // Border state when the user is actively typing in the field
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8.0),
                borderSide: const BorderSide(color: Colors.blue, width: 2.0),
              ),
              // Border state when the field validator fails
              errorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8.0),
                borderSide: const BorderSide(color: Colors.red, width: 1.0),
              ),
            ),
          ),
        ),
        SizedBox(width: 6),
        FilledButton(
          style: FilledButton.styleFrom(
            splashFactory: InkSparkle.splashFactory,
            padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 8),
            backgroundColor: Colors.grey.withOpacity(0.5),
            foregroundColor: Colors.black, // 2. Fixes the splash color base
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(
                8,
              ), // 3. Fixes the BorderRadius geometry bug
            ),
          ),
          onPressed: () {
            onSearch(textEditing.text);
          },
          child: const Icon(
            Icons.search,
            size: 28,
            fontWeight: FontWeight.w900,
          ),
        ),
      ],
    );
  }
}
