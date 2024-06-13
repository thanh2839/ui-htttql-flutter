// import 'package:flutter/material.dart';
// import 'package:percent_indicator/circular_percent_indicator.dart';
// import 'package:web_htttql_flutter/const/constant.dart';
// import 'package:web_htttql_flutter/data/activity_chart_data.dart';
// import 'package:web_htttql_flutter/util/responsive.dart';
// import 'package:web_htttql_flutter/widgets/custom_card_widget.dart';
//
// class ActivityChart extends StatelessWidget {
//   const ActivityChart({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     final activityDataDetails = ActivityDataDetails();
//
//     return GridView.builder(
//       itemCount: activityDataDetails.activityDataData.length,
//       shrinkWrap: true,
//       physics: const ScrollPhysics(),
//       gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//         crossAxisCount: Responsive.isMobile(context) ? 2 : 4,
//         crossAxisSpacing: Responsive.isMobile(context) ? 12 : 15,
//         mainAxisSpacing: 12.0,
//       ),
//       itemBuilder: (context, index) => CustomCard(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.spaceAround,
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Text(
//               activityDataDetails.activityDataData[index].nameKPI,
//               style: const TextStyle(
//                 fontSize: 13,
//                 color: Color.fromARGB(255, 173, 163, 163),
//                 fontWeight: FontWeight.normal,
//               ),
//             ),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               crossAxisAlignment: CrossAxisAlignment.center,
//               children: [
//                 CircularPercentIndicator(
//                   radius: 50,
//                   lineWidth: 15,
//                   percent: activityDataDetails.activityDataData[index].percent / 100,
//                   circularStrokeCap: CircularStrokeCap.round,
//                   backgroundColor: backgroundChartColor,
//                   linearGradient: LinearGradient(colors: [
//                     Color(0xFF526ADA),
//                     Color(0xFF526ADA),
//                     Color(0xFF78E5E7),
//                   ]),
//                   center: Text(
//                     "${activityDataDetails.activityDataData[index].percent.toString()}%" ,
//                   ),
//                 ),
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
