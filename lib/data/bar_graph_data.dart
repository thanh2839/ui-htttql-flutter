import 'package:flutter/material.dart';
import 'package:web_htttql_flutter/model/bar_graph_model.dart';
import 'package:web_htttql_flutter/model/graph_model.dart';

class BarGraphData {
  final data = [
    const BarGraphModel(label: "April revenue", color: Color(0xFFFEB95A), graph: [
      GraphModel(x: 0, y: 8),
      GraphModel(x: 1, y: 3),
      GraphModel(x: 2, y: 7),

    ]),
    const BarGraphModel(label: "May revenue", color: Color(0xFFF2C8ED), graph: [
      GraphModel(x: 0, y: 8),
      GraphModel(x: 1, y: 6),
      GraphModel(x: 2, y: 3),

    ]),
    const BarGraphModel(label: "June revenue", color: Color(0xFF20AEF3), graph: [
      GraphModel(x: 0, y: 7),
      GraphModel(x: 1, y: 10),
      GraphModel(x: 2, y: 2),

    ]),
  ];

  final label = [
    'God Father',
    'Atomic Habits',
    'Rich Dad Poor Dad',
    'Harry Potter',
    'Sherlock Holmes',
  ];
}
