import 'package:fl_chart/fl_chart.dart';
import 'package:web_htttql_flutter/main.dart';

class LineData {
  final spots =  globalDashboardData?.lineRevenuesDetail;

  final leftTitle = globalDashboardData?.lineRevenues;

  final bottomTitle = {
    0: 'Jan',
    10: 'Feb',
    20: 'Mar',
    30: 'Apr',
    40: 'May',
    50: 'Jun',
    60: 'Jul',
    70: 'Aug',
    80: 'Sep',
    90: 'Oct',
    100: 'Nov',
    110: 'Dec',
  };
}

