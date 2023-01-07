import 'package:ambisis_test/Screens/DashboardESG/components/barchart_widget.dart';
import 'package:ambisis_test/Screens/DashboardESG/components/card_chart_widget.dart';
import 'package:flutter/material.dart';

import 'components/filter_bydate_widget.dart';

class DashboardESG extends StatefulWidget {
  const DashboardESG({super.key});

  @override
  State<DashboardESG> createState() => _DashboardESGState();
}

class _DashboardESGState extends State<DashboardESG> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          titleSpacing: 5,
          foregroundColor: Theme.of(context).primaryColorDark,
          backgroundColor: Theme.of(context).primaryColorLight,
          surfaceTintColor: Theme.of(context).primaryColorLight,
          centerTitle: true,
          toolbarHeight: 70.0,
          title: Text(
            'Dashboard ESG',
            style: TextStyle(
                color: Theme.of(context).primaryColorDark,
                fontSize: 18.0,
                fontWeight: FontWeight.w900),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 18.0),
              child: Row(
                children: [
                  IconButton(
                    onPressed: () => {},
                    icon: const Icon(Icons.cloud_outlined),
                  ),
                  const SizedBox(
                    width: 4.0,
                  ),
                  IconButton(
                    onPressed: () => {},
                    icon: const Icon(Icons.chat_bubble_outline),
                  ),
                  const SizedBox(
                    width: 4.0,
                  ),
                  IconButton(
                    onPressed: () => {},
                    icon: const Icon(Icons.menu),
                  ),
                ],
              ),
            ),
          ],
          leading: IconButton(
            onPressed: () => {},
            icon: const Icon(Icons.chevron_left_rounded),
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 18.0, horizontal: 18.0),
            child: Column(
              children: const [
                Filter(),
                SizedBox(
                  height: 18.0,
                ),
                Barchart(),
                SizedBox(
                  height: 18.0,
                ),
                CardChart(
                  title: 'Ambiental',
                  amountValue: 20,
                  cardIcon: Icons.forest_outlined,
                  completedValue: 1,
                  progressState: 0.1,
                ),
                SizedBox(
                  height: 18.0,
                ),
                CardChart(
                  title: 'Social',
                  amountValue: 15,
                  cardIcon: Icons.people_outlined,
                  completedValue: 6,
                  progressState: 0.5,
                ),
                SizedBox(
                  height: 18.0,
                ),
                CardChart(
                  title: 'Governança',
                  amountValue: 60,
                  cardIcon: Icons.business_sharp,
                  completedValue: 59,
                  progressState: 0.90,
                ),
              ],
            ),
          ),
        ));
  }
}
