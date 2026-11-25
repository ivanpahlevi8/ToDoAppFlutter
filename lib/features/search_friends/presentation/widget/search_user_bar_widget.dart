import 'package:flutter/material.dart';
import 'package:to_do_app_flutter/core/theme/app_custom_color.dart';

class SearchUserBarWidget extends StatelessWidget {
  final TextEditingController textEditing;
  final Function(String) onSearch;
  final String hintText;

  const SearchUserBarWidget({
    super.key,
    required this.textEditing,
    required this.onSearch,
    this.hintText = "Search by username",
  });

  @override
  Widget build(BuildContext context) {
    final customColor = Theme.of(context).extension<AppCustomColors>()!;

    OutlineInputBorder border(Color color, double width) => OutlineInputBorder(
          borderRadius: BorderRadius.circular(14),
          borderSide: BorderSide(color: color, width: width),
        );

    return TextField(
      controller: textEditing,
      keyboardType: TextInputType.text,
      textInputAction: TextInputAction.search,
      onSubmitted: (value) {
        final String username = value.trim();
        if (username.isNotEmpty) onSearch(username);
      },
      cursorColor: customColor.dashboardAccent!,
      style: TextStyle(
        color: customColor.dashboardTextPrimary!,
        fontSize: 16,
        fontWeight: FontWeight.w500,
      ),
      decoration: InputDecoration(
        isDense: true,
        filled: true,
        fillColor: customColor.dashboardCardColor!,
        hintText: hintText,
        hintStyle: TextStyle(
          color: customColor.dashboardTextSecondary!,
          fontSize: 16,
          fontWeight: FontWeight.w400,
        ),
        contentPadding: const EdgeInsets.symmetric(vertical: 14),
        prefixIcon: Icon(
          Icons.search,
          size: 22,
          color: customColor.dashboardTextSecondary!,
        ),
        suffixIcon: ValueListenableBuilder<TextEditingValue>(
          valueListenable: textEditing,
          builder: (context, value, _) {
            if (value.text.isEmpty) return const SizedBox.shrink();

            return IconButton(
              tooltip: "Clear",
              onPressed: textEditing.clear,
              icon: Icon(
                Icons.close,
                size: 20,
                color: customColor.dashboardTextSecondary!,
              ),
            );
          },
        ),
        enabledBorder: border(customColor.dashboardStrongBorderColor!, 1.2),
        focusedBorder: border(customColor.dashboardAccent!, 2),
      ),
    );
  }
}
