import 'package:fl_chart/fl_chart.dart';
import 'package:web_htttql_flutter/main.dart';

class LineData {

   final spots = globalDashboardData?.lineRevenuesDetail;
  // for (var i in glo)
  // final spots = const [
  //   // FlSpot(0, globalDashboardData?.lineRevenuesDetail['0'].d),
  //   FlSpot(5, 72.87),
  //   FlSpot(10, 19),
  //   FlSpot(15, 24),
  //   FlSpot(20, 19),
  //   FlSpot(25, 23),
  //   FlSpot(30, 19),
  //   FlSpot(35, 20),
  //   FlSpot(40, 39),
  //   FlSpot(45, 75),
  //   FlSpot(50, 46),
  //   FlSpot(55, 42),
  //   FlSpot(60, 46),
  //   FlSpot(65, 40),
  //   FlSpot(70, 43),
  //   FlSpot(75, 59),
  //   FlSpot(80, 53),
  //   FlSpot(85, 90),
  //   FlSpot(90, 81),
  //   FlSpot(95, 75),
  //   FlSpot(100, 78),
  //   FlSpot(105, 86),
  //   FlSpot(110, 78),
  //   FlSpot(115, 74),
  // ];


  // final le
  final leftTitle = {
    globalDashboardData?.lineRevenues['0']: globalDashboardData?.lineRevenues['0'],
    globalDashboardData?.lineRevenues['20']: globalDashboardData?.lineRevenues['20'],
    globalDashboardData?.lineRevenues['40']: globalDashboardData?.lineRevenues['40'],
    globalDashboardData?.lineRevenues['60']: globalDashboardData?.lineRevenues['60'],
    globalDashboardData?.lineRevenues['80']: globalDashboardData?.lineRevenues['80'],
    globalDashboardData?.lineRevenues['100']: globalDashboardData?.lineRevenues['100']
  };
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

