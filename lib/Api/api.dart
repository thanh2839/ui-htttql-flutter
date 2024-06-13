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
    // Process the fetched data here
    print(data);

    Data_dashboard.userCount = data['userCount'];
    Data_dashboard.inStock = data['bookCount'];
    Data_dashboard.boughtCount = data['boughtCount'];
    Data_dashboard.allPaid = data['paidCount'];
    Data_dashboard.totalRevenue = data['totalRevenue'];
    // Data_dashboard.paids = data['paids'];
    print("User : ${Data_dashboard.userCount}");
    // print("Instock: ${inStock}");
    print("boughtCount : ${Data_dashboard.boughtCount}");
    print("allPaids : ${Data_dashboard.allPaid}");
    print("Total Revenue : ${Data_dashboard.totalRevenue}");
    // for ( var i in Data_dashboard.paids ) {
    //   print(i);
    // }
    return Data_dashboard;
  } else {
    // If the server did not return a 200 OK response,
    // then throw an exception.
    throw Exception('Failed to load data');
  }
}