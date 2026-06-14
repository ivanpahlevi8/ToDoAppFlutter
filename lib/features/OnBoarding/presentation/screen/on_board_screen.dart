import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';
import 'package:to_do_app_flutter/features/OnBoarding/domain/entity/on_board_entity.dart';
import 'package:to_do_app_flutter/features/OnBoarding/presentation/async_ui_externsion.dart';
import 'package:to_do_app_flutter/features/OnBoarding/presentation/controller/on_board_local_provider.dart';
import 'package:to_do_app_flutter/features/OnBoarding/presentation/widget/on_board_widget.dart';

class OnBoardScreen extends ConsumerStatefulWidget {
  const OnBoardScreen({super.key});

  @override
  ConsumerState<OnBoardScreen> createState() => _OnBoardScreenState();
}

class _OnBoardScreenState extends ConsumerState<OnBoardScreen> {
  // create instance for page view controller
  late PageController _pageViewController;

  // create list of on board screen
  late List<OnBoardEntity> onBoardDataList;

  // create state for tracked page number
  int _pageTracked = 0;

  @override
  void initState() {
    _pageViewController = PageController(initialPage: 0);
    onBoardDataList = [
      OnBoardEntity(
        onBoardTitle: "Arrange Your Project Timeline",
        onBoardDescription:
            "Project management feature can make you easy to manage timeline of your project",
        onBoardImage: "assets/images/onboard_image_1.jpg",
      ),
      OnBoardEntity(
        onBoardTitle: "Manage Your Team",
        onBoardDescription:
            "Manage your own team by add team member and assign project to the team",
        onBoardImage: "assets/images/onboard_image_2.jpg",
      ),
      OnBoardEntity(
        onBoardTitle: "Manage To Do List",
        onBoardDescription:
            "Add to do list of each project based on project and team that handle the project",
        onBoardImage: "assets/images/onboard_image_3.jpg",
      ),
    ];

    super.initState();
  }

  @override
  void dispose() {
    _pageViewController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // watch on board state
    ref.listen<AsyncValue<void>>(onBoardLocalProviderProvider, (
      previous,
      next,
    ) {
      next.onUserOnBoard(context, ref);
    });

    return PageView(
      controller: _pageViewController,
      allowImplicitScrolling: true,
      onPageChanged: (newPage) {
        setState(() {
          _pageTracked = newPage;
        });
      },
      children: onBoardDataList.map((data) {
        return OnBoardWidget(
          onBoardEntity: data,
          showBackButton: _pageTracked > 0,
          showNextButton: _pageTracked < 2,
          showFinishButton: _pageTracked == 2,
          onBackPage: () {
            // set on back
            _pageViewController.previousPage(
              duration: const Duration(milliseconds: 500),
              curve: Curves.easeInOut,
            );
          },
          onNextPage: () {
            _pageViewController.nextPage(
              duration: const Duration(milliseconds: 500),
              curve: Curves.easeInOut,
            );
          },
          onFinalPage: () {
            // set login later, by access the reference
            ref.read(onBoardLocalProviderProvider.notifier).setUserOnBoard();
          },
        );
      }).toList(),
    );
  }
}
