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

  // color for card 1 for dashboard
  final Color? cardGradientStart1;
  final Color? cardGradientEnd1;
  final Color? cardShadow1;
  final Color? cardBorder1;

  // color for ocean blue card
  final Color? oceanBlueCardGradientStart;
  final Color? oceanBlueCardGradientEnd;
  final Color? oceanBlueCardShadow;
  final Color? oceanBlueCardBorder;

  // color for teal card
  final Color? tealCardGradientStart;
  final Color? tealCardGradientEnd;
  final Color? tealCardShadow;
  final Color? tealCardBorder;

  // color for pink card
  final Color? pinkCardGradientStart;
  final Color? pinkCardGradientEnd;
  final Color? pinkCardShadow;
  final Color? pinkCardBorder;

  // color for sunset coral card
  final Color? sunsetColarCardGradientStart;
  final Color? sunsetColarCardGradientEnd;
  final Color? sunsetColarCardShadow;
  final Color? sunsetColarCardBorder;

  // color for amber card
  final Color? amberCardGradientStart;
  final Color? amberCardGradientEnd;
  final Color? amberCardShadow;
  final Color? amberCardBorder;

  // color for emerald card
  final Color? emeraldCardGradientStart;
  final Color? emeraldCardGradientEnd;
  final Color? emeraldCardShadow;
  final Color? emeraldCardBorder;

  // color for indigo card
  final Color? indigoCardGradientStart;
  final Color? indigoCardGradientEnd;
  final Color? indigoCardShadow;
  final Color? indigoCardBorder;

  // color for cyan card
  final Color? cyanCardGradientStart;
  final Color? cyanCardGradientEntd;
  final Color? cyanCardShadow;
  final Color? cyanCardBorder;

  // color for crimson card
  final Color? crimsonCardGradientStart;
  final Color? crimsonCarGradientEnd;
  final Color? crimsonCardShadow;
  final Color? crimsonCardBorder;

  // color for grape card
  final Color? grapeCardGradientStart;
  final Color? grapeCardGradientEnd;
  final Color? grapeCardShadow;
  final Color? grapeCardBorder;

  // color for performance dashboard
  final Color? performanceDashboardCardColor;
  final Color? performanceDashboardBorderColor;
  final Color? performanceDashboardShadowColor;
  final Color? performanceDashboardTextPrimary;
  final Color? performanceDashboardTextSecondary;
  final Color? performanceDashboardTextMuted;
  final Color? performanceDashboardAccent;
  final Color? performanceDashboardAccentSoft;
  final Color? performanceDashboardAccentMuted;
  final Color? performanceDashboardPositive;
  final Color? performanceDashboardPositiveBg;
  final Color? performanceDashboardNegative;
  final Color? performanceDashboardNegativeBg;
  final Color? performanceDashboardChartGrid;
  final Color? performanceDashboardToDos;
  final Color? performanceDashboardProjects;
  final Color? performanceDashboardTeams;
  final Color? performanceDashboardConnections;

  // dashboard (home): surfaces
  final Color? dashboardBackgroundColor;
  final Color? dashboardCardColor;
  final Color? dashboardDrawerColor;
  final Color? dashboardChartTrackColor;
  final Color? dashboardDividerColor; // dividers and card borders
  final Color?
      dashboardStrongBorderColor; // outline buttons, unselected legend, dashed "See more"
  final Color? dashboardChartBaselineColor;
  final Color?
      dashboardScrimColor; // behind the open drawer: 40% light / 62% dark

  // dashboard (home): text
  final Color? dashboardTextPrimary;
  final Color? dashboardTextSecondary;
  final Color? dashboardChartLabel;
  final Color? dashboardOnAccent; // text and icons on accent fills

  // dashboard (home): accent
  final Color? dashboardAccent; // FAB, selected border, primary buttons
  final Color? dashboardAccentText; // links, chip text
  final Color?
      dashboardAccentSoft; // chip and selected backgrounds: 12% light / 18% dark
  final Color? dashboardAccentPressed; // pressed overlay: 10% light / 12% dark

  // dashboard (home): chart and status colours
  final Color? dashboardStatusToDo;
  final Color? dashboardStatusInProgress;
  final Color? dashboardStatusDone;
  final Color? dashboardRoleLeading;
  final Color? dashboardRoleMember;
  final Color? dashboardConnected;
  final Color? dashboardNeedsAction; // Requests bar in the connection chart
  final Color? dashboardChartEmpty; // zero-value stubs

  // dashboard (home): needs-action banner and badge
  final Color? dashboardBannerBackground; // amber at 16% light / 10% dark
  final Color? dashboardBannerBorder; // amber at 50% light / 30% dark
  final Color? dashboardBannerTextSecondary;
  final Color? dashboardAmber; // banner button, drawer badge
  final Color? dashboardOnAmber;

  // tabs and timeline cards (same values in light and dark)
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
    this.cardGradientStart1,
    this.cardGradientEnd1,
    this.cardShadow1,
    this.cardBorder1,
    this.oceanBlueCardGradientStart,
    this.oceanBlueCardGradientEnd,
    this.oceanBlueCardShadow,
    this.oceanBlueCardBorder,
    this.tealCardGradientStart,
    this.tealCardGradientEnd,
    this.tealCardShadow,
    this.tealCardBorder,
    this.pinkCardGradientStart,
    this.pinkCardGradientEnd,
    this.pinkCardShadow,
    this.pinkCardBorder,
    this.sunsetColarCardGradientStart,
    this.sunsetColarCardGradientEnd,
    this.sunsetColarCardShadow,
    this.sunsetColarCardBorder,
    this.amberCardGradientStart,
    this.amberCardGradientEnd,
    this.amberCardShadow,
    this.amberCardBorder,
    this.emeraldCardGradientStart,
    this.emeraldCardGradientEnd,
    this.emeraldCardShadow,
    this.emeraldCardBorder,
    this.indigoCardGradientStart,
    this.indigoCardGradientEnd,
    this.indigoCardShadow,
    this.indigoCardBorder,
    this.cyanCardGradientStart,
    this.cyanCardGradientEntd,
    this.cyanCardShadow,
    this.cyanCardBorder,
    this.crimsonCardGradientStart,
    this.crimsonCarGradientEnd,
    this.crimsonCardShadow,
    this.crimsonCardBorder,
    this.grapeCardGradientStart,
    this.grapeCardGradientEnd,
    this.grapeCardShadow,
    this.grapeCardBorder,
    this.performanceDashboardCardColor,
    this.performanceDashboardBorderColor,
    this.performanceDashboardShadowColor,
    this.performanceDashboardTextPrimary,
    this.performanceDashboardTextSecondary,
    this.performanceDashboardTextMuted,
    this.performanceDashboardAccent,
    this.performanceDashboardAccentSoft,
    this.performanceDashboardAccentMuted,
    this.performanceDashboardPositive,
    this.performanceDashboardPositiveBg,
    this.performanceDashboardNegative,
    this.performanceDashboardNegativeBg,
    this.performanceDashboardChartGrid,
    this.performanceDashboardToDos,
    this.performanceDashboardProjects,
    this.performanceDashboardTeams,
    this.performanceDashboardConnections,
    this.dashboardBackgroundColor,
    this.dashboardCardColor,
    this.dashboardDrawerColor,
    this.dashboardChartTrackColor,
    this.dashboardDividerColor,
    this.dashboardStrongBorderColor,
    this.dashboardChartBaselineColor,
    this.dashboardScrimColor,
    this.dashboardTextPrimary,
    this.dashboardTextSecondary,
    this.dashboardChartLabel,
    this.dashboardOnAccent,
    this.dashboardAccent,
    this.dashboardAccentText,
    this.dashboardAccentSoft,
    this.dashboardAccentPressed,
    this.dashboardStatusToDo,
    this.dashboardStatusInProgress,
    this.dashboardStatusDone,
    this.dashboardRoleLeading,
    this.dashboardRoleMember,
    this.dashboardConnected,
    this.dashboardNeedsAction,
    this.dashboardChartEmpty,
    this.dashboardBannerBackground,
    this.dashboardBannerBorder,
    this.dashboardBannerTextSecondary,
    this.dashboardAmber,
    this.dashboardOnAmber,
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
    Color? cardGradientStart1,
    Color? cardGradientEnd1,
    Color? cardShadow1,
    Color? cardBorder1,
    Color? oceanBlueCardGradientStart,
    Color? oceanBlueCardGradientEnd,
    Color? oceanBlueCardShadow,
    Color? oceanBlueCardBorder,
    Color? tealCardGradientStart,
    Color? tealCardGradientEnd,
    Color? tealCardShadow,
    Color? tealCardBorder,
    Color? pinkCardGradientStart,
    Color? pinkCardGradientEnd,
    Color? pinkCardShadow,
    Color? pinkCardBorder,
    Color? sunsetColarCardGradientStart,
    Color? sunsetColarCardGradientEnd,
    Color? sunsetColarCardShadow,
    Color? sunsetColarCardBorder,
    Color? amberCardGradientStart,
    Color? amberCardGradientEnd,
    Color? amberCardShadow,
    Color? amberCardBorder,
    Color? emeraldCardGradientStart,
    Color? emeraldCardGradientEnd,
    Color? emeraldCardShadow,
    Color? emeraldCardBorder,
    Color? indigoCardGradientStart,
    Color? indigoCardGradientEnd,
    Color? indigoCardShadow,
    Color? indigoCardBorder,
    Color? cyanCardGradientStart,
    Color? cyanCardGradientEntd,
    Color? cyanCardShadow,
    Color? cyanCardBorder,
    Color? crimsonCardGradientStart,
    Color? crimsonCarGradientEnd,
    Color? crimsonCardShadow,
    Color? crimsonCardBorder,
    Color? grapeCardGradientStart,
    Color? grapeCardGradientEnd,
    Color? grapeCardShadow,
    Color? grapeCardBorder,
    Color? performanceDashboardCardColor,
    Color? performanceDashboardBorderColor,
    Color? performanceDashboardShadowColor,
    Color? performanceDashboardTextPrimary,
    Color? performanceDashboardTextSecondary,
    Color? performanceDashboardTextMuted,
    Color? performanceDashboardAccent,
    Color? performanceDashboardAccentSoft,
    Color? performanceDashboardAccentMuted,
    Color? performanceDashboardPositive,
    Color? performanceDashboardPositiveBg,
    Color? performanceDashboardNegative,
    Color? performanceDashboardNegativeBg,
    Color? performanceDashboardChartGrid,
    Color? performanceDashboardToDos,
    Color? performanceDashboardProjects,
    Color? performanceDashboardTeams,
    Color? performanceDashboardConnections,
    Color? dashboardBackgroundColor,
    Color? dashboardCardColor,
    Color? dashboardDrawerColor,
    Color? dashboardChartTrackColor,
    Color? dashboardDividerColor,
    Color? dashboardStrongBorderColor,
    Color? dashboardChartBaselineColor,
    Color? dashboardScrimColor,
    Color? dashboardTextPrimary,
    Color? dashboardTextSecondary,
    Color? dashboardChartLabel,
    Color? dashboardOnAccent,
    Color? dashboardAccent,
    Color? dashboardAccentText,
    Color? dashboardAccentSoft,
    Color? dashboardAccentPressed,
    Color? dashboardStatusToDo,
    Color? dashboardStatusInProgress,
    Color? dashboardStatusDone,
    Color? dashboardRoleLeading,
    Color? dashboardRoleMember,
    Color? dashboardConnected,
    Color? dashboardNeedsAction,
    Color? dashboardChartEmpty,
    Color? dashboardBannerBackground,
    Color? dashboardBannerBorder,
    Color? dashboardBannerTextSecondary,
    Color? dashboardAmber,
    Color? dashboardOnAmber,
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
      deleteBackgroundDialogConfirmation: deleteBackgroundDialogConfirmation ??
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
      openHourSelectedDayBackgroundColor: openHourSelectedDayBackgroundColor ??
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
      cardGradientStart1: cardGradientStart1 ?? this.cardGradientStart1,
      cardGradientEnd1: cardGradientEnd1 ?? this.cardGradientEnd1,
      cardShadow1: cardShadow1 ?? this.cardShadow1,
      cardBorder1: cardBorder1 ?? this.cardBorder1,
      oceanBlueCardGradientStart:
          oceanBlueCardGradientStart ?? this.oceanBlueCardGradientStart,
      oceanBlueCardGradientEnd:
          oceanBlueCardGradientEnd ?? this.oceanBlueCardGradientEnd,
      oceanBlueCardShadow: oceanBlueCardShadow ?? this.oceanBlueCardShadow,
      oceanBlueCardBorder: oceanBlueCardBorder ?? this.oceanBlueCardBorder,
      tealCardGradientStart:
          tealCardGradientStart ?? this.tealCardGradientStart,
      tealCardGradientEnd: tealCardGradientEnd ?? this.tealCardGradientEnd,
      tealCardShadow: tealCardShadow ?? this.tealCardShadow,
      tealCardBorder: tealCardBorder ?? this.tealCardBorder,
      pinkCardGradientStart:
          pinkCardGradientStart ?? this.pinkCardGradientStart,
      pinkCardGradientEnd: pinkCardGradientEnd ?? this.pinkCardGradientEnd,
      pinkCardShadow: pinkCardShadow ?? this.pinkCardShadow,
      pinkCardBorder: pinkCardBorder ?? this.pinkCardBorder,
      sunsetColarCardGradientStart:
          sunsetColarCardGradientStart ?? this.sunsetColarCardGradientStart,
      sunsetColarCardGradientEnd:
          sunsetColarCardGradientEnd ?? this.sunsetColarCardGradientEnd,
      sunsetColarCardShadow:
          sunsetColarCardShadow ?? this.sunsetColarCardShadow,
      sunsetColarCardBorder:
          sunsetColarCardBorder ?? this.sunsetColarCardBorder,
      amberCardGradientStart:
          amberCardGradientStart ?? this.amberCardGradientStart,
      amberCardGradientEnd: amberCardGradientEnd ?? this.amberCardGradientEnd,
      amberCardShadow: amberCardShadow ?? this.amberCardShadow,
      amberCardBorder: amberCardBorder ?? this.amberCardBorder,
      emeraldCardGradientStart:
          emeraldCardGradientStart ?? this.emeraldCardGradientStart,
      emeraldCardGradientEnd:
          emeraldCardGradientEnd ?? this.emeraldCardGradientEnd,
      emeraldCardShadow: emeraldCardShadow ?? this.emeraldCardShadow,
      emeraldCardBorder: emeraldCardBorder ?? this.emeraldCardBorder,
      indigoCardGradientStart:
          indigoCardGradientStart ?? this.indigoCardGradientStart,
      indigoCardGradientEnd:
          indigoCardGradientEnd ?? this.indigoCardGradientEnd,
      indigoCardShadow: indigoCardShadow ?? this.indigoCardShadow,
      indigoCardBorder: indigoCardBorder ?? this.indigoCardBorder,
      cyanCardGradientStart:
          cyanCardGradientStart ?? this.cyanCardGradientStart,
      cyanCardGradientEntd: cyanCardGradientEntd ?? this.cyanCardGradientEntd,
      cyanCardShadow: cyanCardShadow ?? this.cyanCardShadow,
      cyanCardBorder: cyanCardBorder ?? this.cyanCardBorder,
      crimsonCardGradientStart:
          crimsonCardGradientStart ?? this.crimsonCardGradientStart,
      crimsonCarGradientEnd:
          crimsonCarGradientEnd ?? this.crimsonCarGradientEnd,
      crimsonCardShadow: crimsonCardShadow ?? this.crimsonCardShadow,
      crimsonCardBorder: crimsonCardBorder ?? this.crimsonCardBorder,
      grapeCardGradientStart:
          grapeCardGradientStart ?? this.grapeCardGradientStart,
      grapeCardGradientEnd: grapeCardGradientEnd ?? this.grapeCardGradientEnd,
      grapeCardShadow: grapeCardShadow ?? this.grapeCardShadow,
      grapeCardBorder: grapeCardBorder ?? this.grapeCardBorder,
      performanceDashboardCardColor:
          performanceDashboardCardColor ?? this.performanceDashboardCardColor,
      performanceDashboardBorderColor: performanceDashboardBorderColor ??
          this.performanceDashboardBorderColor,
      performanceDashboardShadowColor: performanceDashboardShadowColor ??
          this.performanceDashboardShadowColor,
      performanceDashboardTextPrimary: performanceDashboardTextPrimary ??
          this.performanceDashboardTextPrimary,
      performanceDashboardTextSecondary: performanceDashboardTextSecondary ??
          this.performanceDashboardTextSecondary,
      performanceDashboardTextMuted:
          performanceDashboardTextMuted ?? this.performanceDashboardTextMuted,
      performanceDashboardAccent:
          performanceDashboardAccent ?? this.performanceDashboardAccent,
      performanceDashboardAccentSoft:
          performanceDashboardAccentSoft ?? this.performanceDashboardAccentSoft,
      performanceDashboardAccentMuted: performanceDashboardAccentMuted ??
          this.performanceDashboardAccentMuted,
      performanceDashboardPositive:
          performanceDashboardPositive ?? this.performanceDashboardPositive,
      performanceDashboardPositiveBg:
          performanceDashboardPositiveBg ?? this.performanceDashboardPositiveBg,
      performanceDashboardNegative:
          performanceDashboardNegative ?? this.performanceDashboardNegative,
      performanceDashboardNegativeBg:
          performanceDashboardNegativeBg ?? this.performanceDashboardNegativeBg,
      performanceDashboardChartGrid:
          performanceDashboardChartGrid ?? this.performanceDashboardChartGrid,
      performanceDashboardToDos:
          performanceDashboardToDos ?? this.performanceDashboardToDos,
      performanceDashboardProjects:
          performanceDashboardProjects ?? this.performanceDashboardProjects,
      performanceDashboardTeams:
          performanceDashboardTeams ?? this.performanceDashboardTeams,
      performanceDashboardConnections: performanceDashboardConnections ??
          this.performanceDashboardConnections,
      dashboardBackgroundColor:
          dashboardBackgroundColor ?? this.dashboardBackgroundColor,
      dashboardCardColor: dashboardCardColor ?? this.dashboardCardColor,
      dashboardDrawerColor: dashboardDrawerColor ?? this.dashboardDrawerColor,
      dashboardChartTrackColor:
          dashboardChartTrackColor ?? this.dashboardChartTrackColor,
      dashboardDividerColor:
          dashboardDividerColor ?? this.dashboardDividerColor,
      dashboardStrongBorderColor:
          dashboardStrongBorderColor ?? this.dashboardStrongBorderColor,
      dashboardChartBaselineColor:
          dashboardChartBaselineColor ?? this.dashboardChartBaselineColor,
      dashboardScrimColor: dashboardScrimColor ?? this.dashboardScrimColor,
      dashboardTextPrimary: dashboardTextPrimary ?? this.dashboardTextPrimary,
      dashboardTextSecondary:
          dashboardTextSecondary ?? this.dashboardTextSecondary,
      dashboardChartLabel: dashboardChartLabel ?? this.dashboardChartLabel,
      dashboardOnAccent: dashboardOnAccent ?? this.dashboardOnAccent,
      dashboardAccent: dashboardAccent ?? this.dashboardAccent,
      dashboardAccentText: dashboardAccentText ?? this.dashboardAccentText,
      dashboardAccentSoft: dashboardAccentSoft ?? this.dashboardAccentSoft,
      dashboardAccentPressed:
          dashboardAccentPressed ?? this.dashboardAccentPressed,
      dashboardStatusToDo: dashboardStatusToDo ?? this.dashboardStatusToDo,
      dashboardStatusInProgress:
          dashboardStatusInProgress ?? this.dashboardStatusInProgress,
      dashboardStatusDone: dashboardStatusDone ?? this.dashboardStatusDone,
      dashboardRoleLeading: dashboardRoleLeading ?? this.dashboardRoleLeading,
      dashboardRoleMember: dashboardRoleMember ?? this.dashboardRoleMember,
      dashboardConnected: dashboardConnected ?? this.dashboardConnected,
      dashboardNeedsAction: dashboardNeedsAction ?? this.dashboardNeedsAction,
      dashboardChartEmpty: dashboardChartEmpty ?? this.dashboardChartEmpty,
      dashboardBannerBackground:
          dashboardBannerBackground ?? this.dashboardBannerBackground,
      dashboardBannerBorder:
          dashboardBannerBorder ?? this.dashboardBannerBorder,
      dashboardBannerTextSecondary:
          dashboardBannerTextSecondary ?? this.dashboardBannerTextSecondary,
      dashboardAmber: dashboardAmber ?? this.dashboardAmber,
      dashboardOnAmber: dashboardOnAmber ?? this.dashboardOnAmber,
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
      lightGrayBackground:
          Color.lerp(lightGrayBackground, other.lightGrayBackground, t),
      winnerLabelText: Color.lerp(winnerLabelText, other.winnerLabelText, t),
      winnerLabelBackground:
          Color.lerp(winnerLabelBackground, other.winnerLabelBackground, t),
      completedLabelText:
          Color.lerp(completedLabelText, other.completedLabelText, t),
      completedLabelBackground: Color.lerp(
          completedLabelBackground, other.completedLabelBackground, t),
      cardBackgroundColor:
          Color.lerp(cardBackgroundColor, other.cardBackgroundColor, t),
      cardBackgroundColor2:
          Color.lerp(cardBackgroundColor2, other.cardBackgroundColor2, t),
      cardBackgroundColor3:
          Color.lerp(cardBackgroundColor3, other.cardBackgroundColor3, t),
      selectedTabButtonBackground: Color.lerp(
          selectedTabButtonBackground, other.selectedTabButtonBackground, t),
      selectedTabButtonText:
          Color.lerp(selectedTabButtonText, other.selectedTabButtonText, t),
      unselectedTabButtonBackground: Color.lerp(unselectedTabButtonBackground,
          other.unselectedTabButtonBackground, t),
      unselectedTabButtonText:
          Color.lerp(unselectedTabButtonText, other.unselectedTabButtonText, t),
      selectedPagerIndicator:
          Color.lerp(selectedPagerIndicator, other.selectedPagerIndicator, t),
      unselectedPagerIndicator: Color.lerp(
          unselectedPagerIndicator, other.unselectedPagerIndicator, t),
      buttonDeleteBackground:
          Color.lerp(buttonDeleteBackground, other.buttonDeleteBackground, t),
      buttonDeleteText: Color.lerp(buttonDeleteText, other.buttonDeleteText, t),
      buttonDetailBackground:
          Color.lerp(buttonDetailBackground, other.buttonDetailBackground, t),
      buttonDetailText: Color.lerp(buttonDetailText, other.buttonDetailText, t),
      deleteBackgroundDialogConfirmation: Color.lerp(
          deleteBackgroundDialogConfirmation,
          other.deleteBackgroundDialogConfirmation,
          t),
      deleteBackgroundDialogConfirmationPositiveButtonBackground: Color.lerp(
          deleteBackgroundDialogConfirmationPositiveButtonBackground,
          other.deleteBackgroundDialogConfirmationPositiveButtonBackground,
          t),
      colorPalette1DialogBackground: Color.lerp(colorPalette1DialogBackground,
          other.colorPalette1DialogBackground, t),
      colorPalette1DialogHeadline: Color.lerp(
          colorPalette1DialogHeadline, other.colorPalette1DialogHeadline, t),
      colorPalette1DialogParagraph: Color.lerp(
          colorPalette1DialogParagraph, other.colorPalette1DialogParagraph, t),
      colorPalette1DialogStroke: Color.lerp(
          colorPalette1DialogStroke, other.colorPalette1DialogStroke, t),
      colorPalette1DialogButtonBackground: Color.lerp(
          colorPalette1DialogButtonBackground,
          other.colorPalette1DialogButtonBackground,
          t),
      colorPalette1DialogButtonText: Color.lerp(colorPalette1DialogButtonText,
          other.colorPalette1DialogButtonText, t),
      loadingDialogBackground:
          Color.lerp(loadingDialogBackground, other.loadingDialogBackground, t),
      loadingDialogText:
          Color.lerp(loadingDialogText, other.loadingDialogText, t),
      errorDialogBackground:
          Color.lerp(errorDialogBackground, other.errorDialogBackground, t),
      errorDialogText: Color.lerp(errorDialogText, other.errorDialogText, t),
      nextButtonBackground:
          Color.lerp(nextButtonBackground, other.nextButtonBackground, t),
      nextButtonText: Color.lerp(nextButtonText, other.nextButtonText, t),
      successDialogBackground:
          Color.lerp(successDialogBackground, other.successDialogBackground, t),
      successDialogText:
          Color.lerp(successDialogText, other.successDialogText, t),
      choiceBadgeBackground:
          Color.lerp(choiceBadgeBackground, other.choiceBadgeBackground, t),
      topAppBarBackgroundColor: Color.lerp(
          topAppBarBackgroundColor, other.topAppBarBackgroundColor, t),
      reviewTopBarColor:
          Color.lerp(reviewTopBarColor, other.reviewTopBarColor, t),
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
          accessTagBackgroundColor, other.accessTagBackgroundColor, t),
      accessTagTextColor:
          Color.lerp(accessTagTextColor, other.accessTagTextColor, t),
      accessTagAccentColor:
          Color.lerp(accessTagAccentColor, other.accessTagAccentColor, t),
      otherTagBackgroundColor:
          Color.lerp(otherTagBackgroundColor, other.otherTagBackgroundColor, t),
      otherTagTextColor:
          Color.lerp(otherTagTextColor, other.otherTagTextColor, t),
      otherTagAccentColor:
          Color.lerp(otherTagAccentColor, other.otherTagAccentColor, t),
      openHourSelectedDayBackgroundColor: Color.lerp(
          openHourSelectedDayBackgroundColor,
          other.openHourSelectedDayBackgroundColor,
          t),
      openHourSelectedDayTextColor: Color.lerp(
          openHourSelectedDayTextColor, other.openHourSelectedDayTextColor, t),
      openHourUnselectedDayBackgroundColor: Color.lerp(
          openHourUnselectedDayBackgroundColor,
          other.openHourUnselectedDayBackgroundColor,
          t),
      openHourUnselectedDayPrimaryTextColor: Color.lerp(
          openHourUnselectedDayPrimaryTextColor,
          other.openHourUnselectedDayPrimaryTextColor,
          t),
      openHourUnselectedDaySecondaryTextColor: Color.lerp(
          openHourUnselectedDaySecondaryTextColor,
          other.openHourUnselectedDaySecondaryTextColor,
          t),
      blueLightStart: Color.lerp(blueLightStart, other.blueLightStart, t),
      blueLightEnd: Color.lerp(blueLightEnd, other.blueLightEnd, t),
      cardGradientStart1:
          Color.lerp(cardGradientStart1, other.cardGradientStart1, t),
      cardGradientEnd1: Color.lerp(cardGradientEnd1, other.cardGradientEnd1, t),
      cardShadow1: Color.lerp(cardShadow1, other.cardShadow1, t),
      cardBorder1: Color.lerp(cardBorder1, other.cardBorder1, t),
      oceanBlueCardGradientStart: Color.lerp(
          oceanBlueCardGradientStart, other.oceanBlueCardGradientStart, t),
      oceanBlueCardGradientEnd: Color.lerp(
          oceanBlueCardGradientEnd, other.oceanBlueCardGradientEnd, t),
      oceanBlueCardShadow:
          Color.lerp(oceanBlueCardShadow, other.oceanBlueCardShadow, t),
      oceanBlueCardBorder:
          Color.lerp(oceanBlueCardBorder, other.oceanBlueCardBorder, t),
      tealCardGradientStart:
          Color.lerp(tealCardGradientStart, other.tealCardGradientStart, t),
      tealCardGradientEnd:
          Color.lerp(tealCardGradientEnd, other.tealCardGradientEnd, t),
      tealCardShadow: Color.lerp(tealCardShadow, other.tealCardShadow, t),
      tealCardBorder: Color.lerp(tealCardBorder, other.tealCardBorder, t),
      pinkCardGradientStart:
          Color.lerp(pinkCardGradientStart, other.pinkCardGradientStart, t),
      pinkCardGradientEnd:
          Color.lerp(pinkCardGradientEnd, other.pinkCardGradientEnd, t),
      pinkCardShadow: Color.lerp(pinkCardShadow, other.pinkCardShadow, t),
      pinkCardBorder: Color.lerp(pinkCardBorder, other.pinkCardBorder, t),
      sunsetColarCardGradientStart: Color.lerp(
          sunsetColarCardGradientStart, other.sunsetColarCardGradientStart, t),
      sunsetColarCardGradientEnd: Color.lerp(
          sunsetColarCardGradientEnd, other.sunsetColarCardGradientEnd, t),
      sunsetColarCardShadow:
          Color.lerp(sunsetColarCardShadow, other.sunsetColarCardShadow, t),
      sunsetColarCardBorder:
          Color.lerp(sunsetColarCardBorder, other.sunsetColarCardBorder, t),
      amberCardGradientStart:
          Color.lerp(amberCardGradientStart, other.amberCardGradientStart, t),
      amberCardGradientEnd:
          Color.lerp(amberCardGradientEnd, other.amberCardGradientEnd, t),
      amberCardShadow: Color.lerp(amberCardShadow, other.amberCardShadow, t),
      amberCardBorder: Color.lerp(amberCardBorder, other.amberCardBorder, t),
      emeraldCardGradientStart: Color.lerp(
          emeraldCardGradientStart, other.emeraldCardGradientStart, t),
      emeraldCardGradientEnd:
          Color.lerp(emeraldCardGradientEnd, other.emeraldCardGradientEnd, t),
      emeraldCardShadow:
          Color.lerp(emeraldCardShadow, other.emeraldCardShadow, t),
      emeraldCardBorder:
          Color.lerp(emeraldCardBorder, other.emeraldCardBorder, t),
      indigoCardGradientStart:
          Color.lerp(indigoCardGradientStart, other.indigoCardGradientStart, t),
      indigoCardGradientEnd:
          Color.lerp(indigoCardGradientEnd, other.indigoCardGradientEnd, t),
      indigoCardShadow: Color.lerp(indigoCardShadow, other.indigoCardShadow, t),
      indigoCardBorder: Color.lerp(indigoCardBorder, other.indigoCardBorder, t),
      cyanCardGradientStart:
          Color.lerp(cyanCardGradientStart, other.cyanCardGradientStart, t),
      cyanCardGradientEntd:
          Color.lerp(cyanCardGradientEntd, other.cyanCardGradientEntd, t),
      cyanCardShadow: Color.lerp(cyanCardShadow, other.cyanCardShadow, t),
      cyanCardBorder: Color.lerp(cyanCardBorder, other.cyanCardBorder, t),
      crimsonCardGradientStart: Color.lerp(
          crimsonCardGradientStart, other.crimsonCardGradientStart, t),
      crimsonCarGradientEnd:
          Color.lerp(crimsonCarGradientEnd, other.crimsonCarGradientEnd, t),
      crimsonCardShadow:
          Color.lerp(crimsonCardShadow, other.crimsonCardShadow, t),
      crimsonCardBorder:
          Color.lerp(crimsonCardBorder, other.crimsonCardBorder, t),
      grapeCardGradientStart:
          Color.lerp(grapeCardGradientStart, other.grapeCardGradientStart, t),
      grapeCardGradientEnd:
          Color.lerp(grapeCardGradientEnd, other.grapeCardGradientEnd, t),
      grapeCardShadow: Color.lerp(grapeCardShadow, other.grapeCardShadow, t),
      grapeCardBorder: Color.lerp(grapeCardBorder, other.grapeCardBorder, t),
      performanceDashboardCardColor: Color.lerp(performanceDashboardCardColor,
          other.performanceDashboardCardColor, t),
      performanceDashboardBorderColor: Color.lerp(
          performanceDashboardBorderColor,
          other.performanceDashboardBorderColor,
          t),
      performanceDashboardShadowColor: Color.lerp(
          performanceDashboardShadowColor,
          other.performanceDashboardShadowColor,
          t),
      performanceDashboardTextPrimary: Color.lerp(
          performanceDashboardTextPrimary,
          other.performanceDashboardTextPrimary,
          t),
      performanceDashboardTextSecondary: Color.lerp(
          performanceDashboardTextSecondary,
          other.performanceDashboardTextSecondary,
          t),
      performanceDashboardTextMuted: Color.lerp(performanceDashboardTextMuted,
          other.performanceDashboardTextMuted, t),
      performanceDashboardAccent: Color.lerp(
          performanceDashboardAccent, other.performanceDashboardAccent, t),
      performanceDashboardAccentSoft: Color.lerp(performanceDashboardAccentSoft,
          other.performanceDashboardAccentSoft, t),
      performanceDashboardAccentMuted: Color.lerp(
          performanceDashboardAccentMuted,
          other.performanceDashboardAccentMuted,
          t),
      performanceDashboardPositive: Color.lerp(
          performanceDashboardPositive, other.performanceDashboardPositive, t),
      performanceDashboardPositiveBg: Color.lerp(performanceDashboardPositiveBg,
          other.performanceDashboardPositiveBg, t),
      performanceDashboardNegative: Color.lerp(
          performanceDashboardNegative, other.performanceDashboardNegative, t),
      performanceDashboardNegativeBg: Color.lerp(performanceDashboardNegativeBg,
          other.performanceDashboardNegativeBg, t),
      performanceDashboardChartGrid: Color.lerp(performanceDashboardChartGrid,
          other.performanceDashboardChartGrid, t),
      performanceDashboardToDos: Color.lerp(
          performanceDashboardToDos, other.performanceDashboardToDos, t),
      performanceDashboardProjects: Color.lerp(
          performanceDashboardProjects, other.performanceDashboardProjects, t),
      performanceDashboardTeams: Color.lerp(
          performanceDashboardTeams, other.performanceDashboardTeams, t),
      performanceDashboardConnections: Color.lerp(
          performanceDashboardConnections,
          other.performanceDashboardConnections,
          t),
      dashboardBackgroundColor: Color.lerp(
          dashboardBackgroundColor, other.dashboardBackgroundColor, t),
      dashboardCardColor:
          Color.lerp(dashboardCardColor, other.dashboardCardColor, t),
      dashboardDrawerColor:
          Color.lerp(dashboardDrawerColor, other.dashboardDrawerColor, t),
      dashboardChartTrackColor: Color.lerp(
          dashboardChartTrackColor, other.dashboardChartTrackColor, t),
      dashboardDividerColor:
          Color.lerp(dashboardDividerColor, other.dashboardDividerColor, t),
      dashboardStrongBorderColor: Color.lerp(
          dashboardStrongBorderColor, other.dashboardStrongBorderColor, t),
      dashboardChartBaselineColor: Color.lerp(
          dashboardChartBaselineColor, other.dashboardChartBaselineColor, t),
      dashboardScrimColor:
          Color.lerp(dashboardScrimColor, other.dashboardScrimColor, t),
      dashboardTextPrimary:
          Color.lerp(dashboardTextPrimary, other.dashboardTextPrimary, t),
      dashboardTextSecondary:
          Color.lerp(dashboardTextSecondary, other.dashboardTextSecondary, t),
      dashboardChartLabel:
          Color.lerp(dashboardChartLabel, other.dashboardChartLabel, t),
      dashboardOnAccent:
          Color.lerp(dashboardOnAccent, other.dashboardOnAccent, t),
      dashboardAccent: Color.lerp(dashboardAccent, other.dashboardAccent, t),
      dashboardAccentText:
          Color.lerp(dashboardAccentText, other.dashboardAccentText, t),
      dashboardAccentSoft:
          Color.lerp(dashboardAccentSoft, other.dashboardAccentSoft, t),
      dashboardAccentPressed:
          Color.lerp(dashboardAccentPressed, other.dashboardAccentPressed, t),
      dashboardStatusToDo:
          Color.lerp(dashboardStatusToDo, other.dashboardStatusToDo, t),
      dashboardStatusInProgress: Color.lerp(
          dashboardStatusInProgress, other.dashboardStatusInProgress, t),
      dashboardStatusDone:
          Color.lerp(dashboardStatusDone, other.dashboardStatusDone, t),
      dashboardRoleLeading:
          Color.lerp(dashboardRoleLeading, other.dashboardRoleLeading, t),
      dashboardRoleMember:
          Color.lerp(dashboardRoleMember, other.dashboardRoleMember, t),
      dashboardConnected:
          Color.lerp(dashboardConnected, other.dashboardConnected, t),
      dashboardNeedsAction:
          Color.lerp(dashboardNeedsAction, other.dashboardNeedsAction, t),
      dashboardChartEmpty:
          Color.lerp(dashboardChartEmpty, other.dashboardChartEmpty, t),
      dashboardBannerBackground: Color.lerp(
          dashboardBannerBackground, other.dashboardBannerBackground, t),
      dashboardBannerBorder:
          Color.lerp(dashboardBannerBorder, other.dashboardBannerBorder, t),
      dashboardBannerTextSecondary: Color.lerp(
          dashboardBannerTextSecondary, other.dashboardBannerTextSecondary, t),
      dashboardAmber: Color.lerp(dashboardAmber, other.dashboardAmber, t),
      dashboardOnAmber: Color.lerp(dashboardOnAmber, other.dashboardOnAmber, t),
      cardInformationBackground1: Color.lerp(
          cardInformationBackground1, other.cardInformationBackground1, t),
      tabContainerBg: Color.lerp(tabContainerBg, other.tabContainerBg, t),
      tabActiveBg: Color.lerp(tabActiveBg, other.tabActiveBg, t),
      tabActiveText: Color.lerp(tabActiveText, other.tabActiveText, t),
      tabInactiveText: Color.lerp(tabInactiveText, other.tabInactiveText, t),
      tabIndicatorTint: Color.lerp(tabIndicatorTint, other.tabIndicatorTint, t),
      timeLineCardColor1:
          Color.lerp(timeLineCardColor1, other.timeLineCardColor1, t),
      timeLineCardColor2:
          Color.lerp(timeLineCardColor2, other.timeLineCardColor2, t),
      timeLineCardColor3:
          Color.lerp(timeLineCardColor3, other.timeLineCardColor3, t),
      timeLineCardColor4:
          Color.lerp(timeLineCardColor4, other.timeLineCardColor4, t),
      timeLineCardColor5:
          Color.lerp(timeLineCardColor5, other.timeLineCardColor5, t),
      timeLineCardColor6:
          Color.lerp(timeLineCardColor6, other.timeLineCardColor6, t),
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
    deleteBackgroundDialogConfirmationPositiveButtonBackground:
        Color(0xFFF96E2A),
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

    // color for card 1 for dashboard
    cardGradientStart1: Color(0xFF8C6CF2),
    cardGradientEnd1: Color(0xFF3B23A6),
    cardShadow1: Color(0x595B3FD6),
    cardBorder1: Color(0x00000000),

    // color for ocean blue card
    oceanBlueCardGradientStart: Color(0xFF4FA3FF),
    oceanBlueCardGradientEnd: Color(0xFF1F4FC2),
    oceanBlueCardShadow: Color(0x592F6FE0),
    oceanBlueCardBorder: Color(0x00000000),

    // color for teal card
    tealCardGradientStart: Color(0xFF3FD1B5),
    tealCardGradientEnd: Color(0xFF3FD1B5),
    tealCardShadow: Color(0xFF3FD1B5),
    tealCardBorder: Color(0xFF3FD1B5),

    // color for pink card
    pinkCardGradientStart: Color(0xFFFF7EB3),
    pinkCardGradientEnd: Color(0xFFC2185B),
    pinkCardShadow: Color(0x00000000),
    pinkCardBorder: Color(0x59E0407F),

    // color for sunset coral card
    sunsetColarCardGradientStart: Color(0xFFFF9A6C),
    sunsetColarCardGradientEnd: Color(0xFFE0453A),
    sunsetColarCardShadow: Color(0x59EA6A4F),
    sunsetColarCardBorder: Color(0x00000000),

    // color for amber card
    amberCardGradientStart: Color(0xFFFFC857),
    amberCardGradientEnd: Color(0xFFE08A00),
    amberCardShadow: Color(0x59EBA21F),
    amberCardBorder: Color(0x00000000),

    // color for emerald card
    emeraldCardGradientStart: Color(0xFF5EDB8C),
    emeraldCardGradientEnd: Color(0xFF1E8A4C),
    emeraldCardShadow: Color(0x5932A863),
    emeraldCardBorder: Color(0x00000000),

    // color for indigo card
    indigoCardGradientStart: Color(0xFF7B8CFF),
    indigoCardGradientEnd: Color(0xFF2E36B8),
    indigoCardShadow: Color(0x594A55E0),
    indigoCardBorder: Color(0x00000000),

    // color for cyan card
    cyanCardGradientStart: Color(0xFF5CE1F2),
    cyanCardGradientEntd: Color(0xFF0A8FB8),
    cyanCardShadow: Color(0x00000000),
    cyanCardBorder: Color(0xFF0A8FB8),

    // color for crimson card
    crimsonCardGradientStart: Color(0xFFFF6B7A),
    crimsonCarGradientEnd: Color(0xFFFF6B7A),
    crimsonCardShadow: Color(0x59D93A50),
    crimsonCardBorder: Color(0x59D93A50),

    // color for grape card
    grapeCardGradientStart: Color(0xFFD07CFF),
    grapeCardGradientEnd: Color(0xFFD07CFF),
    grapeCardShadow: Color(0x59A84AE0),
    grapeCardBorder: Color(0x59A84AE0),

    // color for performance dashboard
    performanceDashboardCardColor: Color(0xFFFFFFFF),
    performanceDashboardBorderColor: Color(0xFFE5E7EB),
    performanceDashboardShadowColor: Color(0x14111827),
    performanceDashboardTextPrimary: Color(0xFF111827),
    performanceDashboardTextSecondary: Color(0xFF4B5563),
    performanceDashboardTextMuted: Color(0xFF6B7280),
    performanceDashboardAccent: Color(0xFF4F46E5),
    performanceDashboardAccentSoft: Color(0xFFEEEDFC),
    performanceDashboardAccentMuted: Color(0xFFB9B5F2),
    performanceDashboardPositive: Color(0xFF166534),
    performanceDashboardPositiveBg: Color(0xFFE7F5EC),
    performanceDashboardNegative: Color(0xFF991B1B),
    performanceDashboardNegativeBg: Color(0xFFFDECEC),
    performanceDashboardChartGrid: Color(0xFFEEF0F3),
    performanceDashboardToDos: Color(0xFF4F46E5),
    performanceDashboardProjects: Color(0xFF0D9488),
    performanceDashboardTeams: Color(0xFFD97706),
    performanceDashboardConnections: Color(0xFFDB2777),

    // dashboard (home): surfaces
    dashboardBackgroundColor: Color(0xFFF3F4FA),
    dashboardCardColor: Color(0xFFFFFFFF),
    dashboardDrawerColor: Color(0xFFFFFFFF),
    dashboardChartTrackColor: Color(0xFFECEDF7),
    dashboardDividerColor: Color(0xFFE1E3F0),
    dashboardStrongBorderColor: Color(0xFFC4C7E0),
    dashboardChartBaselineColor: Color(0xFFD5D8EA),
    dashboardScrimColor: Color(0x6614162B),

    // dashboard (home): text
    dashboardTextPrimary: Color(0xFF14162B),
    dashboardTextSecondary: Color(0xFF5B6085),
    dashboardChartLabel: Color(0xFF3A3F66),
    dashboardOnAccent: Color(0xFFFFFFFF),

    // dashboard (home): accent
    dashboardAccent: Color(0xFF4F55D9),
    dashboardAccentText: Color(0xFF3E44C2),
    dashboardAccentSoft: Color(0x1F4F55D9),
    dashboardAccentPressed: Color(0x1A4F55D9),

    // dashboard (home): chart and status colours
    dashboardStatusToDo: Color(0xFF7A7FA6),
    dashboardStatusInProgress: Color(0xFF4F55D9),
    dashboardStatusDone: Color(0xFF1A9A69),
    dashboardRoleLeading: Color(0xFF4F55D9),
    dashboardRoleMember: Color(0xFF8186E3),
    dashboardConnected: Color(0xFF4F55D9),
    dashboardNeedsAction: Color(0xFFB86E00),
    dashboardChartEmpty: Color(0xFFC4C7E0),

    // dashboard (home): needs-action banner and badge
    dashboardBannerBackground: Color(0x29FFB547),
    dashboardBannerBorder: Color(0x80FFB547),
    dashboardBannerTextSecondary: Color(0xFF7A5A1E),
    dashboardAmber: Color(0xFFFFB547),
    dashboardOnAmber: Color(0xFF1A1407),

    // tabs and timeline cards (same values in light and dark)
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
    deleteBackgroundDialogConfirmationPositiveButtonBackground:
        Color(0xFFF96E2A),
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

    // color for card 1 for dashboard
    cardGradientStart1: Color(0xFF3B2A7A),
    cardGradientEnd1: Color(0xFF1E1745),
    cardShadow1: Color(0x408C6CF2),
    cardBorder1: Color(0x408C6CF2),

    // color for ocean blue card
    oceanBlueCardGradientStart: Color(0xFF1E3F7A),
    oceanBlueCardGradientEnd: Color(0xFF0F1F45),
    oceanBlueCardShadow: Color(0x404FA3FF),
    oceanBlueCardBorder: Color(0x404FA3FF),

    // color for teal card
    tealCardGradientStart: Color(0xFF145A55),
    tealCardGradientEnd: Color(0xFF0A2E2C),
    tealCardShadow: Color(0x403FD1B5),
    tealCardBorder: Color(0x403FD1B5),

    // color for pink card
    pinkCardGradientStart: Color(0xFF6E1F45),
    pinkCardGradientEnd: Color(0xFF3A1028),
    pinkCardShadow: Color(0x40FF7EB3),
    pinkCardBorder: Color(0x40FF7EB3),

    // color for sunset coral card
    sunsetColarCardGradientStart: Color(0xFF7A2E24),
    sunsetColarCardGradientEnd: Color(0xFF401612),
    sunsetColarCardShadow: Color(0x40FF9A6C),
    sunsetColarCardBorder: Color(0x40FF9A6C),

    // color for amber card
    amberCardGradientStart: Color(0xFF6E4A0E),
    amberCardGradientEnd: Color(0xFF3A2606),
    amberCardShadow: Color(0x40FFC857),
    amberCardBorder: Color(0x40FFC857),

    // color for emerald card
    emeraldCardGradientStart: Color(0xFF1D5A36),
    emeraldCardGradientEnd: Color(0xFF0E2E1C),
    emeraldCardShadow: Color(0x405EDB8C),
    emeraldCardBorder: Color(0x405EDB8C),

    // color for indigo card
    indigoCardGradientStart: Color(0xFF2A3080),
    indigoCardGradientEnd: Color(0xFF14183F),
    indigoCardShadow: Color(0x407B8CFF),
    indigoCardBorder: Color(0x407B8CFF),

    // color for cyan card
    cyanCardGradientStart: Color(0xFF135A6E),
    cyanCardGradientEntd: Color(0xFF135A6E),
    cyanCardShadow: Color(0x00000000),
    cyanCardBorder: Color(0xFF0A8FB8),

    // color for crimson card
    crimsonCardGradientStart: Color(0xFF6E1A26),
    crimsonCarGradientEnd: Color(0xFF6E1A26),
    crimsonCardShadow: Color(0x40FF6B7A),
    crimsonCardBorder: Color(0x40FF6B7A),

    // color for grape card
    grapeCardGradientStart: Color(0xFF4E1F6E),
    grapeCardGradientEnd: Color(0xFF4E1F6E),
    grapeCardShadow: Color(0x40D07CFF),
    grapeCardBorder: Color(0x40D07CFF),

    // color for performance dashboard
    performanceDashboardCardColor: Color(0xFF181B22),
    performanceDashboardBorderColor: Color(0xFF272B35),
    performanceDashboardShadowColor: Color(0x59000000),
    performanceDashboardTextPrimary: Color(0xFFF3F4F6),
    performanceDashboardTextSecondary: Color(0xFFB4B9C4),
    performanceDashboardTextMuted: Color(0xFF8B91A0),
    performanceDashboardAccent: Color(0xFF8C87F8),
    performanceDashboardAccentSoft: Color(0xFF262448),
    performanceDashboardAccentMuted: Color(0xFF4B4699),
    performanceDashboardPositive: Color(0xFF6EE7A1),
    performanceDashboardPositiveBg: Color(0xFF13301F),
    performanceDashboardNegative: Color(0xFFFCA5A5),
    performanceDashboardNegativeBg: Color(0xFF3A1717),
    performanceDashboardChartGrid: Color(0xFF252A34),
    performanceDashboardToDos: Color(0xFF8C87F8),
    performanceDashboardProjects: Color(0xFF2DD4BF),
    performanceDashboardTeams: Color(0xFFFBBF24),
    performanceDashboardConnections: Color(0xFFF472B6),

    // dashboard (home): surfaces
    dashboardBackgroundColor: Color(0xFF14162B),
    dashboardCardColor: Color(0xFF1D2040),
    dashboardDrawerColor: Color(0xFF1A1C36),
    dashboardChartTrackColor: Color(0xFF272A52),
    dashboardDividerColor: Color(0xFF2E3262),
    dashboardStrongBorderColor: Color(0xFF3A3F72),
    dashboardChartBaselineColor: Color(0xFF343968),
    dashboardScrimColor: Color(0x9E050614),

    // dashboard (home): text
    dashboardTextPrimary: Color(0xFFF1F2FF),
    dashboardTextSecondary: Color(0xFFA8ADD4),
    dashboardChartLabel: Color(0xFFD5D8F5),
    dashboardOnAccent: Color(0xFF14162B),

    // dashboard (home): accent
    dashboardAccent: Color(0xFF8B93FF),
    dashboardAccentText: Color(0xFFB9BEFF),
    dashboardAccentSoft: Color(0x2E8B93FF),
    dashboardAccentPressed: Color(0x1F8B93FF),

    // dashboard (home): chart and status colours
    dashboardStatusToDo: Color(0xFF6D72A8),
    dashboardStatusInProgress: Color(0xFF8B93FF),
    dashboardStatusDone: Color(0xFF63D6A8),
    dashboardRoleLeading: Color(0xFF8B93FF),
    dashboardRoleMember: Color(0xFFDCDFFF),
    dashboardConnected: Color(0xFF8B93FF),
    dashboardNeedsAction: Color(0xFFFFB547),
    dashboardChartEmpty: Color(0xFF3A3F72),

    // dashboard (home): needs-action banner and badge
    dashboardBannerBackground: Color(0x1AFFB547),
    dashboardBannerBorder: Color(0x4DFFB547),
    dashboardBannerTextSecondary: Color(0xFFD6C7AE),
    dashboardAmber: Color(0xFFFFB547),
    dashboardOnAmber: Color(0xFF1A1407),

    // tabs and timeline cards (same values in light and dark)
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

/// Shortcut: `context.appColors.dashboardCardColor`.
/// Delete this if you already have a similar extension.
extension AppCustomColorsContext on BuildContext {
  AppCustomColors get appColors =>
      Theme.of(this).extension<AppCustomColors>() ?? AppCustomColors.dark;
}
