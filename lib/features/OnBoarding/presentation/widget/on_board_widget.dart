import 'package:flutter/material.dart';
import 'package:to_do_app_flutter/core/theme/app_custom_color.dart';
import 'package:to_do_app_flutter/features/OnBoarding/domain/entity/on_board_entity.dart';

class OnBoardWidget extends StatefulWidget {
  final OnBoardEntity onBoardEntity;
  final bool showBackButton;
  final bool showNextButton;
  final bool showFinishButton;
  final Function onBackPage;
  final Function onNextPage;
  final Function onFinalPage;

  const OnBoardWidget({
    super.key,
    required this.onBoardEntity,
    required this.showBackButton,
    required this.showNextButton,
    required this.showFinishButton,
    required this.onBackPage,
    required this.onNextPage,
    required this.onFinalPage,
  });

  @override
  State<OnBoardWidget> createState() => _OnBoardWidgetState();
}

// 2. Added the KeepAlive Mixin
class _OnBoardWidgetState extends State<OnBoardWidget>
    with AutomaticKeepAliveClientMixin {
  // 3. THIS is the magic line that stops the black flashes!
  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    super.build(context);

    final myColor = Theme.of(context).extension<AppCustomColors>()!;

    return Stack(
      fit: StackFit.expand,
      children: [
        Image.asset(
          widget.onBoardEntity.onBoardImage,
          fit: BoxFit.cover,
          gaplessPlayback: true,
          cacheWidth: 1080,
        ),

        Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Colors.transparent,
                Colors.black.withOpacity(0.4),
                Colors.black.withOpacity(0.8),
              ],
            ),
          ),
        ),

        Positioned(
          bottom: 25,
          left: 0,
          right: 0,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
            child: Column(
              mainAxisSize: MainAxisSize
                  .min, // Keeps the column from taking up the whole screen
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  widget.onBoardEntity.onBoardTitle,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontWeight: FontWeight.w900,
                    fontSize: 20.0,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  widget.onBoardEntity.onBoardDescription,
                  textAlign: TextAlign.justify,
                  style: const TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 18,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 15),

                // Buttons Row
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    if (widget.showBackButton)
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        child: TextButton(
                          onPressed: () {
                            widget.onBackPage();
                          },
                          style: TextButton.styleFrom(
                            padding: const EdgeInsets.symmetric(
                              vertical: 7,
                              horizontal: 20,
                            ),
                            backgroundColor: myColor.averageEnd,
                            elevation: 2,
                            shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadiusGeometry.all(
                                Radius.circular(8),
                              ),
                            ),
                          ),
                          child: const Text(
                            "Back",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w700,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),

                    if (widget.showNextButton)
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        child: TextButton(
                          onPressed: () {
                            widget.onNextPage();
                          },
                          style: TextButton.styleFrom(
                            padding: const EdgeInsets.symmetric(
                              vertical: 7,
                              horizontal: 20,
                            ),
                            backgroundColor: myColor.excellentStart,
                            elevation: 2,
                            shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadiusGeometry.all(
                                Radius.circular(8),
                              ),
                            ),
                          ),
                          child: const Text(
                            "Next",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w700,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),

                    if (widget.showFinishButton)
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        child: TextButton(
                          onPressed: () {
                            widget.onFinalPage();
                          },
                          style: TextButton.styleFrom(
                            padding: const EdgeInsets.symmetric(
                              vertical: 7,
                              horizontal: 20,
                            ),
                            backgroundColor: myColor.excellentEnd,
                            elevation: 2,
                            shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadiusGeometry.all(
                                Radius.circular(8),
                              ),
                            ),
                          ),
                          child: const Text(
                            "Finish",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w700,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
