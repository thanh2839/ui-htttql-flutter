import 'package:flutter/material.dart';
import 'package:web_htttql_flutter/widgets/custom_card_widget.dart';

class SummaryDetails extends StatelessWidget {
  const SummaryDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomCard(
      color: const Color(0xFF2F353E),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          buildDetails('KPI', '3050'),
          buildDetails('Admin', '13'),
          buildDetails('Target', 'Not reached'),
          buildDetails('Revenue', '105.30'),
        ],
      ),
    );
  }

  Widget buildDetails(String key, String value) {
    return Column(
      children: [
        Text(
          key,
          style: const TextStyle(fontSize: 11, color: Colors.grey),
        ),
        const SizedBox(height: 2),
        Text(
          value,
          style: const TextStyle(fontSize: 14),
        ),
      ],
    );
  }
}
