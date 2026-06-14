import 'package:flutter/material.dart';

@immutable
class AppCustomColors extends ThemeExtension<AppCustomColors> {
  final Color? gold;
  final Color? displaySmall;
  final Color? textMedium;
  final Color? textTitle;
  final Color? body;
  final Color? inputBackground;
  final Color? placeholder;
  final Color? shimmer;
  final Color? errorColor;
  final Color? lightGrayBackground;
  final Color? winnerLabelText;
  final Color? winnerLabelBackground;
  final Color? completedLabelText;
  final Color? completedLabelBackground;
  final Color? cardBackgroundColor;
  final Color? cardBackgroundColor2;
  final Color? cardBackgroundColor3;
  final Color? selectedTabButtonBackground;
  final Color? selectedTabButtonText;
  final Color? unselectedTabButtonBackground;
  final Color? unselectedTabButtonText;
  final Color? selectedPagerIndicator;
  final Color? unselectedPagerIndicator;
  final Color? buttonDeleteBackground;
  final Color? buttonDeleteText;
  final Color? buttonDetailBackground;
  final Color? buttonDetailText;
  final Color? deleteBackgroundDialogConfirmation;
  final Color? deleteBackgroundDialogConfirmationPositiveButtonBackground;
  final Color? colorPalette1DialogBackground;
  final Color? colorPalette1DialogHeadline;
  final Color? colorPalette1DialogParagraph;
  final Color? colorPalette1DialogStroke;
  final Color? colorPalette1DialogButtonBackground;
  final Color? colorPalette1DialogButtonText;
  final Color? loadingDialogBackground;
  final Color? loadingDialogText;
  final Color? errorDialogBackground;
  final Color? errorDialogText;
  final Color? nextButtonBackground;
  final Color? nextButtonText;
  final Color? successDialogBackground;
  final Color? successDialogText;
  final Color? choiceBadgeBackground;
  final Color? topAppBarBackgroundColor;
  final Color? reviewTopBarColor;
  final Color? excellentStart;
  final Color? excellentEnd;
  final Color? goodStart;
  final Color? goodEnd;
  final Color? averageStart;
  final Color? averageEnd;
  final Color? badStart;
  final Color? badEnd;
  final Color? veryBadStart;
  final Color? veryBadEnd;
  final Color? accessTagBackgroundColor;
  final Color? accessTagTextColor;
  final Color? accessTagAccentColor;
  final Color? otherTagBackgroundColor;
  final Color? otherTagTextColor;
  final Color? otherTagAccentColor;
  final Color? openHourSelectedDayBackgroundColor;
  final Color? openHourSelectedDayTextColor;
  final Color? openHourUnselectedDayBackgroundColor;
  final Color? openHourUnselectedDayPrimaryTextColor;
  final Color? openHourUnselectedDaySecondaryTextColor;
  final Color? blueLightStart;
  final Color? blueLightEnd;

  // Dark mode specific additions
  final Color? cardInformationBackground1;
  final Color? tabContainerBg;
  final Color? tabActiveBg;
  final Color? tabActiveText;
  final Color? tabInactiveText;
  final Color? tabIndicatorTint;
  final Color? timeLineCardColor1;
  final Color? timeLineCardColor2;
  final Color? timeLineCardColor3;
  final Color? timeLineCardColor4;
  final Color? timeLineCardColor5;
  final Color? timeLineCardColor6;

  const AppCustomColors({
    this.gold,
    this.displaySmall,
    this.textMedium,
    this.textTitle,
    this.body,
    this.inputBackground,
    this.placeholder,
    this.shimmer,
    this.errorColor,
    this.lightGrayBackground,
    this.winnerLabelText,
    this.winnerLabelBackground,
    this.completedLabelText,
    this.completedLabelBackground,
    this.cardBackgroundColor,
    this.cardBackgroundColor2,
    this.cardBackgroundColor3,
    this.selectedTabButtonBackground,
    this.selectedTabButtonText,
    this.unselectedTabButtonBackground,
    this.unselectedTabButtonText,
    this.selectedPagerIndicator,
    this.unselectedPagerIndicator,
    this.buttonDeleteBackground,
    this.buttonDeleteText,
    this.buttonDetailBackground,
    this.buttonDetailText,
    this.deleteBackgroundDialogConfirmation,
    this.deleteBackgroundDialogConfirmationPositiveButtonBackground,
    this.colorPalette1DialogBackground,
    this.colorPalette1DialogHeadline,
    this.colorPalette1DialogParagraph,
    this.colorPalette1DialogStroke,
    this.colorPalette1DialogButtonBackground,
    this.colorPalette1DialogButtonText,
    this.loadingDialogBackground,
    this.loadingDialogText,
    this.errorDialogBackground,
    this.errorDialogText,
    this.nextButtonBackground,
    this.nextButtonText,
    this.successDialogBackground,
    this.successDialogText,
    this.choiceBadgeBackground,
    this.topAppBarBackgroundColor,
    this.reviewTopBarColor,
    this.excellentStart,
    this.excellentEnd,
    this.goodStart,
    this.goodEnd,
    this.averageStart,
    this.averageEnd,
    this.badStart,
    this.badEnd,
    this.veryBadStart,
    this.veryBadEnd,
    this.accessTagBackgroundColor,
    this.accessTagTextColor,
    this.accessTagAccentColor,
    this.otherTagBackgroundColor,
    this.otherTagTextColor,
    this.otherTagAccentColor,
    this.openHourSelectedDayBackgroundColor,
    this.openHourSelectedDayTextColor,
    this.openHourUnselectedDayBackgroundColor,
    this.openHourUnselectedDayPrimaryTextColor,
    this.openHourUnselectedDaySecondaryTextColor,
    this.blueLightStart,
    this.blueLightEnd,
    this.cardInformationBackground1,
    this.tabContainerBg,
    this.tabActiveBg,
    this.tabActiveText,
    this.tabInactiveText,
    this.tabIndicatorTint,
    this.timeLineCardColor1,
    this.timeLineCardColor2,
    this.timeLineCardColor3,
    this.timeLineCardColor4,
    this.timeLineCardColor5,
    this.timeLineCardColor6,
  });

  @override
  AppCustomColors copyWith({
    Color? gold,
    Color? displaySmall,
    Color? textMedium,
    Color? textTitle,
    Color? body,
    Color? inputBackground,
    Color? placeholder,
    Color? shimmer,
    Color? errorColor,
    Color? lightGrayBackground,
    Color? winnerLabelText,
    Color? winnerLabelBackground,
    Color? completedLabelText,
    Color? completedLabelBackground,
    Color? cardBackgroundColor,
    Color? cardBackgroundColor2,
    Color? cardBackgroundColor3,
    Color? selectedTabButtonBackground,
    Color? selectedTabButtonText,
    Color? unselectedTabButtonBackground,
    Color? unselectedTabButtonText,
    Color? selectedPagerIndicator,
    Color? unselectedPagerIndicator,
    Color? buttonDeleteBackground,
    Color? buttonDeleteText,
    Color? buttonDetailBackground,
    Color? buttonDetailText,
    Color? deleteBackgroundDialogConfirmation,
    Color? deleteBackgroundDialogConfirmationPositiveButtonBackground,
    Color? colorPalette1DialogBackground,
    Color? colorPalette1DialogHeadline,
    Color? colorPalette1DialogParagraph,
    Color? colorPalette1DialogStroke,
    Color? colorPalette1DialogButtonBackground,
    Color? colorPalette1DialogButtonText,
    Color? loadingDialogBackground,
    Color? loadingDialogText,
    Color? errorDialogBackground,
    Color? errorDialogText,
    Color? nextButtonBackground,
    Color? nextButtonText,
    Color? successDialogBackground,
    Color? successDialogText,
    Color? choiceBadgeBackground,
    Color? topAppBarBackgroundColor,
    Color? reviewTopBarColor,
    Color? excellentStart,
    Color? excellentEnd,
    Color? goodStart,
    Color? goodEnd,
    Color? averageStart,
    Color? averageEnd,
    Color? badStart,
    Color? badEnd,
    Color? veryBadStart,
    Color? veryBadEnd,
    Color? accessTagBackgroundColor,
    Color? accessTagTextColor,
    Color? accessTagAccentColor,
    Color? otherTagBackgroundColor,
    Color? otherTagTextColor,
    Color? otherTagAccentColor,
    Color? openHourSelectedDayBackgroundColor,
    Color? openHourSelectedDayTextColor,
    Color? openHourUnselectedDayBackgroundColor,
    Color? openHourUnselectedDayPrimaryTextColor,
    Color? openHourUnselectedDaySecondaryTextColor,
    Color? blueLightStart,
    Color? blueLightEnd,
    Color? cardInformationBackground1,
    Color? tabContainerBg,
    Color? tabActiveBg,
    Color? tabActiveText,
    Color? tabInactiveText,
    Color? tabIndicatorTint,
    Color? timeLineCardColor1,
    Color? timeLineCardColor2,
    Color? timeLineCardColor3,
    Color? timeLineCardColor4,
    Color? timeLineCardColor5,
    Color? timeLineCardColor6,
  }) {
    return AppCustomColors(
      gold: gold ?? this.gold,
      displaySmall: displaySmall ?? this.displaySmall,
      textMedium: textMedium ?? this.textMedium,
      textTitle: textTitle ?? this.textTitle,
      body: body ?? this.body,
      inputBackground: inputBackground ?? this.inputBackground,
      placeholder: placeholder ?? this.placeholder,
      shimmer: shimmer ?? this.shimmer,
      errorColor: errorColor ?? this.errorColor,
      lightGrayBackground: lightGrayBackground ?? this.lightGrayBackground,
      winnerLabelText: winnerLabelText ?? this.winnerLabelText,
      winnerLabelBackground:
          winnerLabelBackground ?? this.winnerLabelBackground,
      completedLabelText: completedLabelText ?? this.completedLabelText,
      completedLabelBackground:
          completedLabelBackground ?? this.completedLabelBackground,
      cardBackgroundColor: cardBackgroundColor ?? this.cardBackgroundColor,
      cardBackgroundColor2: cardBackgroundColor2 ?? this.cardBackgroundColor2,
      cardBackgroundColor3: cardBackgroundColor3 ?? this.cardBackgroundColor3,
      selectedTabButtonBackground:
          selectedTabButtonBackground ?? this.selectedTabButtonBackground,
      selectedTabButtonText:
          selectedTabButtonText ?? this.selectedTabButtonText,
      unselectedTabButtonBackground:
          unselectedTabButtonBackground ?? this.unselectedTabButtonBackground,
      unselectedTabButtonText:
          unselectedTabButtonText ?? this.unselectedTabButtonText,
      selectedPagerIndicator:
          selectedPagerIndicator ?? this.selectedPagerIndicator,
      unselectedPagerIndicator:
          unselectedPagerIndicator ?? this.unselectedPagerIndicator,
      buttonDeleteBackground:
          buttonDeleteBackground ?? this.buttonDeleteBackground,
      buttonDeleteText: buttonDeleteText ?? this.buttonDeleteText,
      buttonDetailBackground:
          buttonDetailBackground ?? this.buttonDetailBackground,
      buttonDetailText: buttonDetailText ?? this.buttonDetailText,
      deleteBackgroundDialogConfirmation:
          deleteBackgroundDialogConfirmation ??
          this.deleteBackgroundDialogConfirmation,
      deleteBackgroundDialogConfirmationPositiveButtonBackground:
          deleteBackgroundDialogConfirmationPositiveButtonBackground ??
          this.deleteBackgroundDialogConfirmationPositiveButtonBackground,
      colorPalette1DialogBackground:
          colorPalette1DialogBackground ?? this.colorPalette1DialogBackground,
      colorPalette1DialogHeadline:
          colorPalette1DialogHeadline ?? this.colorPalette1DialogHeadline,
      colorPalette1DialogParagraph:
          colorPalette1DialogParagraph ?? this.colorPalette1DialogParagraph,
      colorPalette1DialogStroke:
          colorPalette1DialogStroke ?? this.colorPalette1DialogStroke,
      colorPalette1DialogButtonBackground:
          colorPalette1DialogButtonBackground ??
          this.colorPalette1DialogButtonBackground,
      colorPalette1DialogButtonText:
          colorPalette1DialogButtonText ?? this.colorPalette1DialogButtonText,
      loadingDialogBackground:
          loadingDialogBackground ?? this.loadingDialogBackground,
      loadingDialogText: loadingDialogText ?? this.loadingDialogText,
      errorDialogBackground:
          errorDialogBackground ?? this.errorDialogBackground,
      errorDialogText: errorDialogText ?? this.errorDialogText,
      nextButtonBackground: nextButtonBackground ?? this.nextButtonBackground,
      nextButtonText: nextButtonText ?? this.nextButtonText,
      successDialogBackground:
          successDialogBackground ?? this.successDialogBackground,
      successDialogText: successDialogText ?? this.successDialogText,
      choiceBadgeBackground:
          choiceBadgeBackground ?? this.choiceBadgeBackground,
      topAppBarBackgroundColor:
          topAppBarBackgroundColor ?? this.topAppBarBackgroundColor,
      reviewTopBarColor: reviewTopBarColor ?? this.reviewTopBarColor,
      excellentStart: excellentStart ?? this.excellentStart,
      excellentEnd: excellentEnd ?? this.excellentEnd,
      goodStart: goodStart ?? this.goodStart,
      goodEnd: goodEnd ?? this.goodEnd,
      averageStart: averageStart ?? this.averageStart,
      averageEnd: averageEnd ?? this.averageEnd,
      badStart: badStart ?? this.badStart,
      badEnd: badEnd ?? this.badEnd,
      veryBadStart: veryBadStart ?? this.veryBadStart,
      veryBadEnd: veryBadEnd ?? this.veryBadEnd,
      accessTagBackgroundColor:
          accessTagBackgroundColor ?? this.accessTagBackgroundColor,
      accessTagTextColor: accessTagTextColor ?? this.accessTagTextColor,
      accessTagAccentColor: accessTagAccentColor ?? this.accessTagAccentColor,
      otherTagBackgroundColor:
          otherTagBackgroundColor ?? this.otherTagBackgroundColor,
      otherTagTextColor: otherTagTextColor ?? this.otherTagTextColor,
      otherTagAccentColor: otherTagAccentColor ?? this.otherTagAccentColor,
      openHourSelectedDayBackgroundColor:
          openHourSelectedDayBackgroundColor ??
          this.openHourSelectedDayBackgroundColor,
      openHourSelectedDayTextColor:
          openHourSelectedDayTextColor ?? this.openHourSelectedDayTextColor,
      openHourUnselectedDayBackgroundColor:
          openHourUnselectedDayBackgroundColor ??
          this.openHourUnselectedDayBackgroundColor,
      openHourUnselectedDayPrimaryTextColor:
          openHourUnselectedDayPrimaryTextColor ??
          this.openHourUnselectedDayPrimaryTextColor,
      openHourUnselectedDaySecondaryTextColor:
          openHourUnselectedDaySecondaryTextColor ??
          this.openHourUnselectedDaySecondaryTextColor,
      blueLightStart: blueLightStart ?? this.blueLightStart,
      blueLightEnd: blueLightEnd ?? this.blueLightEnd,
      cardInformationBackground1:
          cardInformationBackground1 ?? this.cardInformationBackground1,
      tabContainerBg: tabContainerBg ?? this.tabContainerBg,
      tabActiveBg: tabActiveBg ?? this.tabActiveBg,
      tabActiveText: tabActiveText ?? this.tabActiveText,
      tabInactiveText: tabInactiveText ?? this.tabInactiveText,
      tabIndicatorTint: tabIndicatorTint ?? this.tabIndicatorTint,
      timeLineCardColor1: timeLineCardColor1 ?? this.timeLineCardColor1,
      timeLineCardColor2: timeLineCardColor2 ?? this.timeLineCardColor2,
      timeLineCardColor3: timeLineCardColor3 ?? this.timeLineCardColor3,
      timeLineCardColor4: timeLineCardColor4 ?? this.timeLineCardColor4,
      timeLineCardColor5: timeLineCardColor5 ?? this.timeLineCardColor5,
      timeLineCardColor6: timeLineCardColor6 ?? this.timeLineCardColor6,
    );
  }

  @override
  AppCustomColors lerp(ThemeExtension<AppCustomColors>? other, double t) {
    if (other is! AppCustomColors) return this;
    return AppCustomColors(
      gold: Color.lerp(gold, other.gold, t),
      displaySmall: Color.lerp(displaySmall, other.displaySmall, t),
      textMedium: Color.lerp(textMedium, other.textMedium, t),
      textTitle: Color.lerp(textTitle, other.textTitle, t),
      body: Color.lerp(body, other.body, t),
      inputBackground: Color.lerp(inputBackground, other.inputBackground, t),
      placeholder: Color.lerp(placeholder, other.placeholder, t),
      shimmer: Color.lerp(shimmer, other.shimmer, t),
      errorColor: Color.lerp(errorColor, other.errorColor, t),
      lightGrayBackground: Color.lerp(
        lightGrayBackground,
        other.lightGrayBackground,
        t,
      ),
      winnerLabelText: Color.lerp(winnerLabelText, other.winnerLabelText, t),
      winnerLabelBackground: Color.lerp(
        winnerLabelBackground,
        other.winnerLabelBackground,
        t,
      ),
      completedLabelText: Color.lerp(
        completedLabelText,
        other.completedLabelText,
        t,
      ),
      completedLabelBackground: Color.lerp(
        completedLabelBackground,
        other.completedLabelBackground,
        t,
      ),
      cardBackgroundColor: Color.lerp(
        cardBackgroundColor,
        other.cardBackgroundColor,
        t,
      ),
      cardBackgroundColor2: Color.lerp(
        cardBackgroundColor2,
        other.cardBackgroundColor2,
        t,
      ),
      cardBackgroundColor3: Color.lerp(
        cardBackgroundColor3,
        other.cardBackgroundColor3,
        t,
      ),
      selectedTabButtonBackground: Color.lerp(
        selectedTabButtonBackground,
        other.selectedTabButtonBackground,
        t,
      ),
      selectedTabButtonText: Color.lerp(
        selectedTabButtonText,
        other.selectedTabButtonText,
        t,
      ),
      unselectedTabButtonBackground: Color.lerp(
        unselectedTabButtonBackground,
        other.unselectedTabButtonBackground,
        t,
      ),
      unselectedTabButtonText: Color.lerp(
        unselectedTabButtonText,
        other.unselectedTabButtonText,
        t,
      ),
      selectedPagerIndicator: Color.lerp(
        selectedPagerIndicator,
        other.selectedPagerIndicator,
        t,
      ),
      unselectedPagerIndicator: Color.lerp(
        unselectedPagerIndicator,
        other.unselectedPagerIndicator,
        t,
      ),
      buttonDeleteBackground: Color.lerp(
        buttonDeleteBackground,
        other.buttonDeleteBackground,
        t,
      ),
      buttonDeleteText: Color.lerp(buttonDeleteText, other.buttonDeleteText, t),
      buttonDetailBackground: Color.lerp(
        buttonDetailBackground,
        other.buttonDetailBackground,
        t,
      ),
      buttonDetailText: Color.lerp(buttonDetailText, other.buttonDetailText, t),
      deleteBackgroundDialogConfirmation: Color.lerp(
        deleteBackgroundDialogConfirmation,
        other.deleteBackgroundDialogConfirmation,
        t,
      ),
      deleteBackgroundDialogConfirmationPositiveButtonBackground: Color.lerp(
        deleteBackgroundDialogConfirmationPositiveButtonBackground,
        other.deleteBackgroundDialogConfirmationPositiveButtonBackground,
        t,
      ),
      colorPalette1DialogBackground: Color.lerp(
        colorPalette1DialogBackground,
        other.colorPalette1DialogBackground,
        t,
      ),
      colorPalette1DialogHeadline: Color.lerp(
        colorPalette1DialogHeadline,
        other.colorPalette1DialogHeadline,
        t,
      ),
      colorPalette1DialogParagraph: Color.lerp(
        colorPalette1DialogParagraph,
        other.colorPalette1DialogParagraph,
        t,
      ),
      colorPalette1DialogStroke: Color.lerp(
        colorPalette1DialogStroke,
        other.colorPalette1DialogStroke,
        t,
      ),
      colorPalette1DialogButtonBackground: Color.lerp(
        colorPalette1DialogButtonBackground,
        other.colorPalette1DialogButtonBackground,
        t,
      ),
      colorPalette1DialogButtonText: Color.lerp(
        colorPalette1DialogButtonText,
        other.colorPalette1DialogButtonText,
        t,
      ),
      loadingDialogBackground: Color.lerp(
        loadingDialogBackground,
        other.loadingDialogBackground,
        t,
      ),
      loadingDialogText: Color.lerp(
        loadingDialogText,
        other.loadingDialogText,
        t,
      ),
      errorDialogBackground: Color.lerp(
        errorDialogBackground,
        other.errorDialogBackground,
        t,
      ),
      errorDialogText: Color.lerp(errorDialogText, other.errorDialogText, t),
      nextButtonBackground: Color.lerp(
        nextButtonBackground,
        other.nextButtonBackground,
        t,
      ),
      nextButtonText: Color.lerp(nextButtonText, other.nextButtonText, t),
      successDialogBackground: Color.lerp(
        successDialogBackground,
        other.successDialogBackground,
        t,
      ),
      successDialogText: Color.lerp(
        successDialogText,
        other.successDialogText,
        t,
      ),
      choiceBadgeBackground: Color.lerp(
        choiceBadgeBackground,
        other.choiceBadgeBackground,
        t,
      ),
      topAppBarBackgroundColor: Color.lerp(
        topAppBarBackgroundColor,
        other.topAppBarBackgroundColor,
        t,
      ),
      reviewTopBarColor: Color.lerp(
        reviewTopBarColor,
        other.reviewTopBarColor,
        t,
      ),
      excellentStart: Color.lerp(excellentStart, other.excellentStart, t),
      excellentEnd: Color.lerp(excellentEnd, other.excellentEnd, t),
      goodStart: Color.lerp(goodStart, other.goodStart, t),
      goodEnd: Color.lerp(goodEnd, other.goodEnd, t),
      averageStart: Color.lerp(averageStart, other.averageStart, t),
      averageEnd: Color.lerp(averageEnd, other.averageEnd, t),
      badStart: Color.lerp(badStart, other.badStart, t),
      badEnd: Color.lerp(badEnd, other.badEnd, t),
      veryBadStart: Color.lerp(veryBadStart, other.veryBadStart, t),
      veryBadEnd: Color.lerp(veryBadEnd, other.veryBadEnd, t),
      accessTagBackgroundColor: Color.lerp(
        accessTagBackgroundColor,
        other.accessTagBackgroundColor,
        t,
      ),
      accessTagTextColor: Color.lerp(
        accessTagTextColor,
        other.accessTagTextColor,
        t,
      ),
      accessTagAccentColor: Color.lerp(
        accessTagAccentColor,
        other.accessTagAccentColor,
        t,
      ),
      otherTagBackgroundColor: Color.lerp(
        otherTagBackgroundColor,
        other.otherTagBackgroundColor,
        t,
      ),
      otherTagTextColor: Color.lerp(
        otherTagTextColor,
        other.otherTagTextColor,
        t,
      ),
      otherTagAccentColor: Color.lerp(
        otherTagAccentColor,
        other.otherTagAccentColor,
        t,
      ),
      openHourSelectedDayBackgroundColor: Color.lerp(
        openHourSelectedDayBackgroundColor,
        other.openHourSelectedDayBackgroundColor,
        t,
      ),
      openHourSelectedDayTextColor: Color.lerp(
        openHourSelectedDayTextColor,
        other.openHourSelectedDayTextColor,
        t,
      ),
      openHourUnselectedDayBackgroundColor: Color.lerp(
        openHourUnselectedDayBackgroundColor,
        other.openHourUnselectedDayBackgroundColor,
        t,
      ),
      openHourUnselectedDayPrimaryTextColor: Color.lerp(
        openHourUnselectedDayPrimaryTextColor,
        other.openHourUnselectedDayPrimaryTextColor,
        t,
      ),
      openHourUnselectedDaySecondaryTextColor: Color.lerp(
        openHourUnselectedDaySecondaryTextColor,
        other.openHourUnselectedDaySecondaryTextColor,
        t,
      ),
      blueLightStart: Color.lerp(blueLightStart, other.blueLightStart, t),
      blueLightEnd: Color.lerp(blueLightEnd, other.blueLightEnd, t),
      cardInformationBackground1: Color.lerp(
        cardInformationBackground1,
        other.cardInformationBackground1,
        t,
      ),
      tabContainerBg: Color.lerp(tabContainerBg, other.tabContainerBg, t),
      tabActiveBg: Color.lerp(tabActiveBg, other.tabActiveBg, t),
      tabActiveText: Color.lerp(tabActiveText, other.tabActiveText, t),
      tabInactiveText: Color.lerp(tabInactiveText, other.tabInactiveText, t),
      tabIndicatorTint: Color.lerp(tabIndicatorTint, other.tabIndicatorTint, t),
      timeLineCardColor1: Color.lerp(
        timeLineCardColor1,
        other.timeLineCardColor1,
        t,
      ),
      timeLineCardColor2: Color.lerp(
        timeLineCardColor2,
        other.timeLineCardColor2,
        t,
      ),
      timeLineCardColor3: Color.lerp(
        timeLineCardColor3,
        other.timeLineCardColor3,
        t,
      ),
      timeLineCardColor4: Color.lerp(
        timeLineCardColor4,
        other.timeLineCardColor4,
        t,
      ),
      timeLineCardColor5: Color.lerp(
        timeLineCardColor5,
        other.timeLineCardColor5,
        t,
      ),
      timeLineCardColor6: Color.lerp(
        timeLineCardColor6,
        other.timeLineCardColor6,
        t,
      ),
    );
  }

  // --- STATIC INSTANCES FOR EASY THEME INTEGRATION ---

  static const light = AppCustomColors(
    gold: Color(0xFFF3C623),
    displaySmall: Color(0xFF000000),
    textMedium: Color(0xFF4E4B66),
    textTitle: Color(0xFF000000),
    body: Color(0xFF4E4B66),
    inputBackground: Color(0xFFFFFFFF),
    placeholder: Color(0xFFA0A3BD),
    shimmer: Color(0xFFC3C3C3),
    errorColor: Color(0xFFC62828),
    lightGrayBackground: Color(0xFFF5F5F5),
    winnerLabelText: Color(0xFFFFFFFF),
    winnerLabelBackground: Color(0xFFC62828),
    completedLabelText: Color(0xFFFFFFFF),
    completedLabelBackground: Color(0xFF2E7D32),
    cardBackgroundColor: Color(0xFFF5F5F5),
    cardBackgroundColor2: Color(0xFFF5F5F9),
    cardBackgroundColor3: Color(0xFFF2F2F2),
    selectedTabButtonBackground: Color(0xFF6200EE),
    selectedTabButtonText: Color(0xFFFFFFFF),
    unselectedTabButtonBackground: Color(0xFFEDE7F6),
    unselectedTabButtonText: Color(0xFF6200EE),
    selectedPagerIndicator: Color(0xFFFF6E6C),
    unselectedPagerIndicator: Color(0xFF67568C),
    buttonDeleteBackground: Color(0xFFF582AE),
    buttonDeleteText: Color(0xFF001858),
    buttonDetailBackground: Color(0xFF078080),
    buttonDetailText: Color(0xFF232323),
    deleteBackgroundDialogConfirmation: Color(0xFFE53170),
    deleteBackgroundDialogConfirmationPositiveButtonBackground: Color(
      0xFFF96E2A,
    ),
    colorPalette1DialogBackground: Color(0xFF004643),
    colorPalette1DialogHeadline: Color(0xFFFFFFFE),
    colorPalette1DialogParagraph: Color(0xFFABD1C6),
    colorPalette1DialogStroke: Color(0xFF001E1D),
    colorPalette1DialogButtonBackground: Color(0xFFF9BC60),
    colorPalette1DialogButtonText: Color(0xFF001E1D),
    loadingDialogBackground: Color(0xFFF9F4EF),
    loadingDialogText: Color(0xFF020826),
    errorDialogBackground: Color(0xFFF72C5B),
    errorDialogText: Color(0xFFFBF6E9),
    nextButtonBackground: Color(0xFF8EB486),
    nextButtonText: Color(0xFFFDF7F4),
    successDialogBackground: Color(0xFF8EB486),
    successDialogText: Color(0xFFFDF7F4),
    choiceBadgeBackground: Color(0xFFF3C623),
    topAppBarBackgroundColor: Color(0xFFF5F5F5),
    reviewTopBarColor: Color(0xFF1F2833),
    excellentStart: Color(0xFF90EE80),
    excellentEnd: Color(0xFFADFF2F),
    goodStart: Color(0xB3ADFF2F),
    goodEnd: Color(0xB3FFFF00),
    averageStart: Color(0xFFFFFF00),
    averageEnd: Color(0xFFFFA500),
    badStart: Color(0xFFFFA500),
    badEnd: Color(0xFFFF6347),
    veryBadStart: Color(0xB3FF6347),
    veryBadEnd: Color(0xB3B22222),
    accessTagBackgroundColor: Color(0xFF363636),
    accessTagTextColor: Color(0xFFD3D3D3),
    accessTagAccentColor: Color(0xFF708090),
    otherTagBackgroundColor: Color(0xFFD3D3D3),
    otherTagTextColor: Color(0xFF363636),
    otherTagAccentColor: Color(0xFFFF8C94),
    openHourSelectedDayBackgroundColor: Color(0xFF2563EB),
    openHourSelectedDayTextColor: Color(0xFFFFFFFF),
    openHourUnselectedDayBackgroundColor: Color(0xFF1E293B),
    openHourUnselectedDayPrimaryTextColor: Color(0xFFE2E8F0),
    openHourUnselectedDaySecondaryTextColor: Color(0xFF94A3B8),
    blueLightStart: Color(0xFF4FC3F7),
    blueLightEnd: Color(0xFF0288D1),

    // Fallbacks from Dark Mode
    cardInformationBackground1: Color(0xFF1B3C53),
    tabContainerBg: Color(0xFF1F2937),
    tabActiveBg: Color(0xFF374151),
    tabActiveText: Color(0xFFF9FAFB),
    tabInactiveText: Color(0xFF9CA3AF),
    tabIndicatorTint: Color(0xFF60A5FA),
    timeLineCardColor1: Color(0xFF2C4A60),
    timeLineCardColor2: Color(0xFF3F6A82),
    timeLineCardColor3: Color(0xFF15202B),
    timeLineCardColor4: Color(0xFF3C7A40),
    timeLineCardColor5: Color(0xFFBD4A4A),
    timeLineCardColor6: Color(0xFFD4A017),
  );

  static const dark = AppCustomColors(
    gold: Color(0xFFF3C623),
    displaySmall: Color(0xFFFFFFFF),
    textMedium: Color(0xFFB0B3B8),
    textTitle: Color(0xFFE4E6EB),
    body: Color(0xFFB0B3B8),
    inputBackground: Color(0xFF3A3B3C),
    placeholder: Color(0xFFDDDDDD),
    shimmer: Color(0xFF414243),
    errorColor: Color(0xFFFF5252),
    lightGrayBackground: Color(0xFF1E1E1E),
    winnerLabelText: Color(0xFFC62828),
    winnerLabelBackground: Color(0xFFFFFFFF),
    completedLabelText: Color(0xFF2E7D32),
    completedLabelBackground: Color(0xFFFFFFFF),
    cardBackgroundColor: Color(0xFF121212),
    cardBackgroundColor2: Color(0xFF2E2E38),
    cardBackgroundColor3: Color(0xFF2B2B2B),
    selectedTabButtonBackground: Color(0xFFBB86FC),
    selectedTabButtonText: Color(0xFFFFFFFF),
    unselectedTabButtonBackground: Color(0xFF2A2A2A),
    unselectedTabButtonText: Color(0xFFBB86FC),
    selectedPagerIndicator: Color(0xFFFF6E6C),
    unselectedPagerIndicator: Color(0xFF67568C),
    buttonDeleteBackground: Color(0xFFFF8906),
    buttonDeleteText: Color(0xFFFFFFFE),
    buttonDetailBackground: Color(0xFFEEBBC3),
    buttonDetailText: Color(0xFF232946),
    deleteBackgroundDialogConfirmation: Color(0xFFE53170),
    deleteBackgroundDialogConfirmationPositiveButtonBackground: Color(
      0xFFF96E2A,
    ),
    colorPalette1DialogBackground: Color(0xFF004643),
    colorPalette1DialogHeadline: Color(0xFFFFFFFE),
    colorPalette1DialogParagraph: Color(0xFFABD1C6),
    colorPalette1DialogStroke: Color(0xFF001E1D),
    colorPalette1DialogButtonBackground: Color(0xFFF9BC60),
    colorPalette1DialogButtonText: Color(0xFF001E1D),
    loadingDialogBackground: Color(0xFFF9F4EF),
    loadingDialogText: Color(0xFF020826),
    errorDialogBackground: Color(0xFFF72C5B),
    errorDialogText: Color(0xFFFBF6E9),
    nextButtonBackground: Color(0xFF8EB486),
    nextButtonText: Color(0xFFFDF7F4),
    successDialogBackground: Color(0xFF8EB486),
    successDialogText: Color(0xFFFDF7F4),
    choiceBadgeBackground: Color(0xFFFEBA17),
    topAppBarBackgroundColor: Color(0xFF24272B),
    reviewTopBarColor: Color(0xFF1F2833),
    excellentStart: Color(0xFF81C784),
    excellentEnd: Color(0xFFDCE775),
    goodStart: Color(0xB3ADFF2F),
    goodEnd: Color(0xB3FFFF00),
    averageStart: Color(0xFFFFD54F),
    averageEnd: Color(0xFFFFB74D),
    badStart: Color(0xFFCC8400),
    badEnd: Color(0xFFCC4F38),
    veryBadStart: Color(0xB3FF6347),
    veryBadEnd: Color(0xB3B22222),
    accessTagBackgroundColor: Color(0xFF363636),
    accessTagTextColor: Color(0xFFD3D3D3),
    accessTagAccentColor: Color(0xFF708090),
    otherTagBackgroundColor: Color(0xFFD3D3D3),
    otherTagTextColor: Color(0xFF363636),
    otherTagAccentColor: Color(0xFFFF8C94),
    openHourSelectedDayBackgroundColor: Color(0xFF2563EB),
    openHourSelectedDayTextColor: Color(0xFFFFFFFF),
    openHourUnselectedDayBackgroundColor: Color(0xFF1E293B),
    openHourUnselectedDayPrimaryTextColor: Color(0xFFE2E8F0),
    openHourUnselectedDaySecondaryTextColor: Color(0xFF94A3B8),
    blueLightStart: Color(0xFF1565C0),
    blueLightEnd: Color(0xFF002171),
    cardInformationBackground1: Color(0xFF1B3C53),
    tabContainerBg: Color(0xFF1F2937),
    tabActiveBg: Color(0xFF374151),
    tabActiveText: Color(0xFFF9FAFB),
    tabInactiveText: Color(0xFF9CA3AF),
    tabIndicatorTint: Color(0xFF60A5FA),
    timeLineCardColor1: Color(0xFF2C4A60),
    timeLineCardColor2: Color(0xFF3F6A82),
    timeLineCardColor3: Color(0xFF15202B),
    timeLineCardColor4: Color(0xFF3C7A40),
    timeLineCardColor5: Color(0xFFBD4A4A),
    timeLineCardColor6: Color(0xFFD4A017),
  );
}
