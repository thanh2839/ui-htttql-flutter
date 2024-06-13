import 'package:web_htttql_flutter/model/overview_model.dart';
import '../main.dart';

class OverviewDetails {
  var userCount = globalDashboardData?.userCount;
  var inStock = globalDashboardData?.inStock;
  var boughtCount = globalDashboardData?.boughtCount;
  var allPaids = globalDashboardData?.allPaid;
  List<OverviewModel> get overviewData {
    return [
      OverviewModel(
          icon: 'web/assets/icons/users.png',
          value: userCount.toString(),
          title: "Số lượng users"),
      OverviewModel(
          icon: 'web/assets/icons/books.png',
          value: inStock.toString(),
          title: "Số lượng sách trong kho"),
      OverviewModel(
          icon: 'web/assets/icons/book_sales.png',
          value: boughtCount.toString(),
          title: "Số lượng sách bán được"),
      OverviewModel(
          icon: 'web/assets/icons/trade.png',
          value: allPaids.toString(),
          title: "Số lượng giao dịch"),
    ];
  }
}
