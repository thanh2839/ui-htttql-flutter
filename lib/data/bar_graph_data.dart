import 'package:flutter/material.dart';
import 'package:web_htttql_flutter/model/bar_graph_model.dart';
import 'package:web_htttql_flutter/model/graph_model.dart';
import 'package:web_htttql_flutter/main.dart';

class BarGraphData {

  var data = <BarGraphModel>[
    BarGraphModel(label: "KPI doanh thu tháng", color: Color(0xFFFEB95A), Mark: globalDashboardData?.gaugeRevenue, end: globalDashboardData?.revenueKPI),
    BarGraphModel(label: "KPI giao dịch tháng", color: Color(0xFFFEB95A), Mark: globalDashboardData?.gaugeTransaction, end: globalDashboardData?.transactionsKPI),
    BarGraphModel(label: "Tỷ lệ chuyển đổi", color: Color(0xFFFEB95A), Mark: globalDashboardData?.gaugeView, end: globalDashboardData?.view)

  ];

  final label = [
    'God Father',
    'Atomic Habits',
    'Rich Dad Poor Dad',
    'Harry Potter',
    'Sherlock Holmes',
  ];
  final Glabel = [
    'Tỷ lệ chuyển đổi',
    'Atomic Habits',
    'aaaaaaaa',
  ];
}
