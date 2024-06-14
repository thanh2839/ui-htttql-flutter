import 'package:flutter/material.dart';
import 'package:web_htttql_flutter/util/responsive.dart';
import 'package:web_htttql_flutter/widgets/activity_chart.dart';
import 'package:web_htttql_flutter/widgets/activity_details_card.dart';
import 'package:web_htttql_flutter/widgets/gauge_graph_widget.dart';
import 'package:web_htttql_flutter/widgets/header_widget.dart';
import 'package:web_htttql_flutter/widgets/line_chart_card.dart';
import 'package:web_htttql_flutter/widgets/summary_widget.dart';

class DashboardWidget extends StatelessWidget {
  const DashboardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18),
        child: Column(
          children: [
            // const SizedBox(height: 18),
            const HeaderWidget(),
            const SizedBox(height: 18),
            const ActivityDetailsCard(),
            const SizedBox(height: 18),
            // const ActivityChart(),
            // const SizedBox(height: 18),
            const BarGraphCard(),
            const SizedBox(height: 18),
            const LineChartCard(),
            const SizedBox(height: 18),
            if (Responsive.isTablet(context)) const SummaryWidget(),
          ],
        ),
      ),
    );
  }
}
