
import 'package:web_htttql_flutter/model/schedule_model.dart';
import '../main.dart';
class ScheduleTasksData {
 var abc = globalDashboardData?.newestOrders;
  final List<ScheduledModel>  scheduled = [
    ScheduledModel(title: "${globalDashboardData?.newestOrders[0]['bookName']}", date: "${globalDashboardData?.newestOrders[0]['time']}"),
    ScheduledModel(title: "${globalDashboardData?.newestOrders[1]['bookName']}", date: "${globalDashboardData?.newestOrders[1]['time']}"),
    ScheduledModel(title: "${globalDashboardData?.newestOrders[2]['bookName']}", date: "${globalDashboardData?.newestOrders[2]['time']}")
  ];
}
