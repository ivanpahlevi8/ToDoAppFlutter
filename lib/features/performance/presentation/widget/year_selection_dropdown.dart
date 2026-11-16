import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:to_do_app_flutter/core/theme/app_custom_color.dart';
import 'package:to_do_app_flutter/core/widget/shimmer_box_widget.dart';
import 'package:to_do_app_flutter/features/performance/presentation/controller/get_login_user_detail_controller.dart';
import 'package:dropdown_flutter/dropdown_flutter.dart';

class YearSelectionDropdown extends ConsumerStatefulWidget {
  const YearSelectionDropdown({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _YearSelectionDropdownState();
}

class _YearSelectionDropdownState extends ConsumerState<YearSelectionDropdown> {
  @override
  void initState() {
    // init data
    Future.microtask(() {
      ref
          .read(getLoginUserDetailControllerProvider.notifier)
          .getLoginUserDetail();
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final customColor = Theme.of(context).extension<AppCustomColors>()!;

    // watch get user by id
    final getLoginUser = ref.watch(getLoginUserDetailControllerProvider);

    return getLoginUser.when(data: (data) {
      // check data
      if (data == null) {
        return ShimmerBoxWidget(height: 50, width: 200, padValue: 8);
      }

      // get date user joined
      final getUserJoinedDate = DateTime.parse(data.createdAt);
      final joinedYear = getUserJoinedDate.year - 1;

      // get current year
      final currentYear = DateTime.now().year + 1;

      // create list of year
      final yearsList = List<int>.generate(
          currentYear - joinedYear + 1, (index) => joinedYear + index);

      // show dropdown flutter
      return Padding(
        padding: const EdgeInsets.only(left: 10.0),
        child: SizedBox(
          width: 300,
          child: DropdownFlutter(
            items: yearsList,
            initialItem: currentYear - 1,
            hintText: "${currentYear - 1}",
            decoration: CustomDropdownDecoration(
              closedFillColor: customColor.performanceDashboardCardColor,
              expandedFillColor: customColor.performanceDashboardCardColor,
              closedBorderRadius: BorderRadius.circular(10),
              expandedBorderRadius: BorderRadius.circular(10),
              closedShadow: [
                BoxShadow(
                  color: customColor.performanceDashboardShadowColor!,
                  offset: const Offset(2, 4),
                  blurRadius: 12,
                ),
              ],
            ),
            onChanged: (value) {},
          ),
        ),
      );
    }, error: (error, stackTrace) {
      return Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              color: customColor.performanceDashboardCardColor!,
              boxShadow: [
                BoxShadow(
                  color: customColor.performanceDashboardShadowColor!,
                  offset: Offset(2, 4),
                  blurRadius: 12,
                )
              ]),
          child: Text(
            "${error.toString()}, ${stackTrace.toString()}",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w700,
              color: customColor.errorColor!,
            ),
          ));
    }, loading: () {
      return ShimmerBoxWidget(height: 50, width: 200, padValue: 8);
    });
  }
}
