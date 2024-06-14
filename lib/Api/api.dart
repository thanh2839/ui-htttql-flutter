import 'package:http/http.dart' as http;
import 'dart:convert';
import '../data/data_dashboard.dart';

Future<DataDashboard> fetchDashboardData() async {
  var Data_dashboard = DataDashboard();
  final response = await http.get(Uri.parse('http://localhost:3001/dashboard'));
  var DataDB;
  if (response.statusCode == 200) {
    // If the server did return a 200 OK response,
    // then parse the JSON.
    final Map<String, dynamic> data = jsonDecode(response.body);
    // final Map<String, dynamic> data = jsonDecode(jsonDecode(utf8.decode(response.bodyBytes)));
    // Process the fetched data here
    print(data);

    Data_dashboard.userCount = data['totalUser'];
    Data_dashboard.inStock = data['totalBooksInStock'];
    Data_dashboard.boughtCount = data['totalBooksSoldInMonth'];
    Data_dashboard.revenueGrowthRate = data['revenueGrowthRate'];

    Data_dashboard.totalTheBookSoldInMonth = data['totalTheBookSoldInMonth'];
    Data_dashboard.view = data['view'];

    Data_dashboard.totalRevenueInMonth = data['totalRevenueInMonth'];
    Data_dashboard.revenueKPI = data['totalRevenueKPI'];

    Data_dashboard.totalTransactionInMonth = data['totalTransactionInMonth'];
    Data_dashboard.transactionsKPI = data['totalTransactionKPI'];

    Data_dashboard.gaugeRevenue = ((data['totalRevenueInMonth'] / data['totalRevenueKPI']) * 100).round();


    Data_dashboard.gaugeTransaction = ((data['totalTransactionInMonth'] / data['totalTransactionKPI']) * 100).round();


    Data_dashboard.gaugeView = (((data['totalTheBookSoldInMonth'] / data['view']) * 100)).round();
    Data_dashboard.newestOrders = data['newestOrders'];
    // Data_dashboard.lineRevenues
    Data_dashboard.lineRevenues = data['revenues'];
    print("abdeeeee:  ${Data_dashboard.lineRevenues}");
    Data_dashboard.lineRevenuesDetail = List<Map<String, dynamic>>.from(data['revenuesDetail']);

     print("abcdde: ${Data_dashboard.newestOrders[2]['bookName']}");

    // print("Gauge revenue: ${Data_dashboard.totalRevenueInMonth}");
    // print("Gauge Transaction: ${Data_dashboard.totalTransactionInMonth}");
    //
    // // 1 cai nua
    //
    // // Data_dashboard.paids = data['paids'];
    // print("User : ${Data_dashboard.userCount}");
    // // print("Instock: ${inStock}");
    // print("boughtCount : ${Data_dashboard.boughtCount}");
    // // for ( var i in Data_dashboard.paids ) {
    // //   print(i);
    // // }
    return Data_dashboard;
  } else {
    // If the server did not return a 200 OK response,
    // then throw an exception.
    throw Exception('Failed to load data');
  }
}