
import 'package:flutter/material.dart';
import 'package:web_htttql_flutter/data/overview_details.dart';
import 'package:web_htttql_flutter/util/responsive.dart';
import 'package:web_htttql_flutter/widgets/custom_card_widget.dart';

class ActivityDetailsCard extends StatelessWidget {
  const ActivityDetailsCard({super.key});

  @override
  Widget build(BuildContext context) {
    final overviewDetails = OverviewDetails();

    return GridView.builder(
      itemCount: overviewDetails.overviewData.length,
      shrinkWrap: true,
      physics: const ScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: Responsive.isMobile(context) ? 2 : 4,
        crossAxisSpacing: Responsive.isMobile(context) ? 8 : 10, // Adjusted spacing
        mainAxisSpacing: 8.0, // Adjusted spacing
        childAspectRatio: Responsive.isMobile(context) ? 1 : 1.5, // Adjusted aspect ratio
      ),
      itemBuilder: (context, index) => CustomCard(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              overviewDetails.overviewData[index].icon,
              width: 30,
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15, bottom: 4),
              child: Text(
                overviewDetails.overviewData[index].value,
                style: const TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            Text(
              overviewDetails.overviewData[index].title,
              style: const TextStyle(
                fontSize: 13,
                color: Colors.grey,
                fontWeight: FontWeight.normal,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
