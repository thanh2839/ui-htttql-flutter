import 'package:flutter/material.dart';
import 'package:web_htttql_flutter/util/responsive.dart';
import 'package:web_htttql_flutter/widgets/dashboard_widget.dart';
import 'package:web_htttql_flutter/widgets/side_menu_widget.dart';
import 'package:web_htttql_flutter/widgets/summary_widget.dart';

class DashBoard extends StatelessWidget {
  const DashBoard({super.key});

  @override
  Widget build(BuildContext context) {
    final isDesktop = Responsive.isDesktop(context);

    return Scaffold(
      drawer: !isDesktop
          ? const SizedBox(
              width: 250,
              child: SideMenuWidget(),
            )
          : null,
      endDrawer: Responsive.isMobile(context)
          ? SizedBox(
              width: MediaQuery.of(context).size.width * 0.8,
              child: const SummaryWidget(),
            )
          : null,
      body: SafeArea(
        child: Row(
          children: [
            if (isDesktop)
              Expanded(
                flex: 2,
                child: SizedBox(
                  child: SideMenuWidget(),
                ),
              ),
            Expanded(
              flex: 7,
              child: DashboardWidget(),
            ),
            if (isDesktop)
              Expanded(
                flex: 3,
                child: SummaryWidget(),
              ),
          ],
        ),
      ),
    );
  }
}