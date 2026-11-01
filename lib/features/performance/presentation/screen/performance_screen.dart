import 'package:flutter/material.dart';
import 'package:to_do_app_flutter/features/performance/presentation/widget/todo_summary_card_widget.dart';

class PerformanceScreen extends StatefulWidget {
  const PerformanceScreen({super.key});

  @override
  State<PerformanceScreen> createState() => _PerformanceScreenState();
}

class _PerformanceScreenState extends State<PerformanceScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ToDoSummaryCardWidget(),
      ],
    );
  }
}
