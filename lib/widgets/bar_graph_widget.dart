import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';
import 'package:web_htttql_flutter/data/bar_graph_data.dart';
import 'package:web_htttql_flutter/main.dart';
import 'package:web_htttql_flutter/widgets/custom_card_widget.dart';

class BarGraphCard extends StatelessWidget {
  const BarGraphCard({super.key});

  @override
  Widget build(BuildContext context) {
    final barGraphData = BarGraphData();
    print("abc: ${barGraphData.data.length}");
    return GridView.builder(
        itemCount: barGraphData.data.length,
        shrinkWrap: true,
        physics: const ScrollPhysics(),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 15,
          mainAxisSpacing: 12.0,
          childAspectRatio: 6 / 4,
        ),
        itemBuilder: (context, index) {
          return CustomCard(
            padding: const EdgeInsets.all(5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //---------------------------------------------
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    barGraphData.data[index].label,
                    style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                const SizedBox(height: 0),
                Expanded(
                  child: SfRadialGauge(
                    enableLoadingAnimation: true,
                    animationDuration: 2000,
                    axes: <RadialAxis>[
                      RadialAxis(
                        minimum: 0,
                        maximum: 100,
                        showTicks: false,
                        // showLabels: false,
                        pointers: <GaugePointer>[
                          RangePointer(
                            value: barGraphData.data[index].Mark,
                          ),
                        ],
                        // pointers: <GaugePointer>[
                        //   NeedlePointer(value: 90), // Example pointer value
                        // ],
                        ranges: <GaugeRange>[
                          GaugeRange(
                            startValue: 0,
                            endValue: 100,
                            gradient: SweepGradient(
                              colors: [
                                Color.fromARGB(
                                    255, 93, 85, 139), // backgroundChartColor
                                Color(0xFF2697FF), // primaryColor
                              ],
                              stops: [
                                0.0,
                                1.0,
                              ],
                            ),
                          ),
                        ],
                        annotations: <GaugeAnnotation>[
                          GaugeAnnotation(
                            widget: Container(
                              child: Text(
                                '${barGraphData.data[index].Mark}%',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            angle: 90,
                            positionFactor: 0,
                          ),
                        ],
                        showFirstLabel: true,
                        showLastLabel: true,
                        labelOffset: -25,
                        onLabelCreated: (AxisLabelCreatedArgs args) {
                          // Ẩn tất cả nhãn ngoại trừ nhãn đầu tiên và cuối cùng
                          if (args.text != '0' && args.text != '100') {
                            args.text = '';

                          }
                          if(args.text == '100'){
                            args.text = barGraphData.data[index].end.toString();
                          }
                        },

                        // ranges: <GaugeRange>[
                        //   GaugeRange(
                        //       startValue: 0,
                        //       endValue: 100,
                        //       gradient: SweepGradient(
                        //           colors: [
                        //             Color.fromARGB(255, 93, 85, 139), // backgroundChartColor
                        //             Color(0xFF2697FF),
                        //             // Color.fromARGB(255, 93, 85, 139), // backgroundChartColor
                        //             // Color(0xFF88B2AC), // selectionColor
                        //             // Color(0xFF2697FF), // primaryColor
                        //             // Color(0xFFFFFFFF), // secondaryColor
                        //           ],
                        //           stops: [
                        //             0.0,
                        //             1.0,
                        //           ],
                        //       ),
                        //       // startWidth: 10,
                        //       // endWidth: 10),
                        //   ),
                        //   // GaugeRange(
                        //   //   startValue: 50,
                        //   //   endValue: 100,
                        //   //   gradient: SweepGradient(
                        //   //     colors: [
                        //   //       Colors.orange,
                        //   //       Colors.red
                        //   //     ], // Start and end colors of the gradient
                        //   //     stops: [
                        //   //       0.0,
                        //   //       1.0
                        //   //     ], // Optional: Control the distribution of colors
                        //   //   ),
                        //   //   startWidth: 10,
                        //   //   endWidth: 10,
                        //   // ),
                        // ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        }
        // child: BarChart(
        //   BarChartData(
        //     barGroups: _chartGroups(
        //       points: barGraphData.data[index].graph,
        //       color: barGraphData.data[index].color,
        //     ),
        //     borderData: FlBorderData(border: const Border()),
        //     gridData: FlGridData(show: false),
        //     titlesData: FlTitlesData(
        //       bottomTitles: AxisTitles(
        //         sideTitles: SideTitles(
        //           showTitles: true,
        //           getTitlesWidget: (value, meta) {
        //             return Padding(
        //               padding: const EdgeInsets.only(top: 5),
        //               child: Text(
        //               truncateString(barGraphData.label[value.toInt()], 10),
        //                 overflow: TextOverflow.visible,
        //                 style: const TextStyle(
        //                     fontSize: 11,
        //                     color: Colors.grey,
        //                     fontWeight: FontWeight.w500),
        //               ),
        //             );
        //           },
        //         ),
        //       ),
        //       leftTitles: AxisTitles(
        //         sideTitles: SideTitles(showTitles: false),
        //       ),
        //       topTitles: AxisTitles(
        //         sideTitles: SideTitles(showTitles: false),
        //       ),
        //       rightTitles: AxisTitles(
        //         sideTitles: SideTitles(showTitles: false),
        //       ),
        //     ),
        //   ),
        // ),
        );
  }
}
//   String truncateString(String text, int length) {
//     if (text.length > length) {
//       return text.substring(0, length) + '...';
//     } else {
//       return text;
//     }
//   }
//
//   List<BarChartGroupData> _chartGroups(
//       {required List<GraphModel> points, required Color color}) {
//     return points
//         .map((point) => BarChartGroupData(x: point.x.toInt(), barRods: [
//               BarChartRodData(
//                 toY: point.y,
//                 width: 12,
//                 color: color.withOpacity(point.y.toInt() > 4 ? 1 : 0.4),
//                 borderRadius: const BorderRadius.only(
//                   topLeft: Radius.circular(3.0),
//                   topRight: Radius.circular(3.0),
//                 ),
//               )
//             ]))
//         .toList();
//   }
// }
