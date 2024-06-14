import 'package:http/http.dart' as http;
import 'dart:convert';
import '../data/data_dashboard.dart';
import 'package:fl_chart/fl_chart.dart';

Future<DataDashboard> fetchDashboardData() async {
  var Data_dashboard = DataDashboard();
  final response = await http.get(Uri.parse('http://localhost:3001/dashboard'));
  var DataDB;
  if (response.statusCode == 200) {
    // If the server did return a 200 OK response,
    // then parse the JSON.
    final utf8Data = utf8.decode(response.bodyBytes);
    final Map<String, dynamic> data = jsonDecode(utf8Data);
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
    Data_dashboard.lineRevenuesDetail = data['revenuesDetail'];

    Map<int, int> convertedMap = {};
    data['revenuesDetail'].forEach((key, value) {
      convertedMap[int.parse(key)] = value;
    });
    final spots = <FlSpot>[];
    for (var i = 0; i < 24; i++) {
      spots.add(FlSpot(i * 5.0, (convertedMap[(i * 5)] as double)));
    }
    // for (var i = 0; i < 24; i++) {
    //   // var x = i * 5.0;
    //   // var y = convertedMap[(i*5)]?.toDouble() ?? 0.0 * ( 105.0 / 2000.0);
    //   spots.add(FlSpot(i * 5.0, ((convertedMap[(i * 5)] as double) * (105.0/ Data_dashboard.lineRevenues['100'])).round() as double));
    //   // spots.add(FlSpot(x,y));
    //   print(spots);
    // }
    Data_dashboard.lineRevenuesDetail = spots;
    // Data_dashboard.lineRevenuesDetail = List<Map<String, dynamic>>.from(data['revenuesDetail']);

    // print("abdeeeee:  ${Data_dashboard.lineRevenues.runtimeType}");
     // print("abcdde: ${Data_dashboard.newestOrders[2]['bookName']}");

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