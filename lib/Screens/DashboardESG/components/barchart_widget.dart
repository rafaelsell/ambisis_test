import 'package:ambisis_test/Screens/DashboardESG/data/chart_data_mockup.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class Barchart extends StatefulWidget {
  const Barchart({super.key});

  @override
  State<Barchart> createState() => _BarchartState();
}

class _BarchartState extends State<Barchart> {
  Widget customTextStats({required String text, required String value}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 18.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            text,
            style: TextStyle(
                color: Theme.of(context).secondaryHeaderColor,
                fontWeight: FontWeight.w700,
                letterSpacing: 0.5),
          ),
          Text(
            value.toString(),
            style: TextStyle(
                color: Theme.of(context).primaryColor,
                fontWeight: FontWeight.w900,
                letterSpacing: 1),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(18),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 18.0, horizontal: 18.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(
                  Icons.analytics_outlined,
                  size: 32.0,
                  color: Theme.of(context).primaryColorDark,
                ),
                const SizedBox(
                  width: 8.0,
                ),
                const Text(
                  "Resumo",
                  style: TextStyle(fontWeight: FontWeight.w800, fontSize: 18.0),
                ),
                const Spacer(),
                Text(
                  'Regular',
                  style: TextStyle(
                      color: Theme.of(context).primaryColorDark,
                      fontSize: 12.0,
                      fontWeight: FontWeight.w900,
                      letterSpacing: 0.5),
                ),
                const SizedBox(
                  width: 8.0,
                ),
                Container(
                  height: 14.0,
                  width: 14.0,
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: <Color>[
                        Color.fromARGB(255, 12, 167, 131),
                        Color.fromARGB(255, 4, 74, 58),
                      ],
                    ),
                    borderRadius: BorderRadius.all(
                      Radius.circular(100.00),
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 8.0,
            ),
            Container(
              height: 2.0,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(
                  Radius.circular(18),
                ),
                color: Theme.of(context).unselectedWidgetColor,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const SizedBox(
                  width: 4.0,
                ),
                customTextStats(text: 'Crescimento', value: '15%'),
                Container(
                  width: 2.0,
                  height: 48.0,
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(
                      Radius.circular(18),
                    ),
                    color: Theme.of(context).unselectedWidgetColor,
                  ),
                ),
                customTextStats(text: 'Total', value: '95'),
                Container(
                  width: 2.0,
                  height: 48.0,
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(
                      Radius.circular(18),
                    ),
                    color: Theme.of(context).unselectedWidgetColor,
                  ),
                ),
                customTextStats(text: 'Média', value: '2.1'),
                Container(
                  width: 2.0,
                  height: 48.0,
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(
                      Radius.circular(18),
                    ),
                    color: Theme.of(context).unselectedWidgetColor,
                  ),
                ),
                customTextStats(text: 'Concluídas', value: '66'),
                Container(
                  width: 2.0,
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(
                      Radius.circular(18),
                    ),
                    color: Theme.of(context).unselectedWidgetColor,
                  ),
                ),
              ],
            ),
            Container(
              height: 2.0,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(
                  Radius.circular(18),
                ),
                color: Theme.of(context).unselectedWidgetColor,
              ),
            ),
            const SizedBox(
              height: 18.0,
            ),
            SizedBox(
              height: 200,
              child: BarChart(
                BarChartData(
                  borderData: FlBorderData(show: false),
                  gridData: FlGridData(show: false),
                  alignment: BarChartAlignment.spaceBetween,
                  maxY: 75.0,
                  minY: 0,
                  barTouchData: BarTouchData(enabled: true),
                  titlesData: FlTitlesData(
                    leftTitles: AxisTitles(
                      sideTitles: SideTitles(
                          showTitles: true, interval: 20, reservedSize: 30),
                    ),
                    topTitles: AxisTitles(
                      sideTitles: SideTitles(showTitles: false),
                    ),
                    rightTitles: AxisTitles(
                      sideTitles: SideTitles(showTitles: false),
                    ),
                    bottomTitles: AxisTitles(
                      sideTitles: SideTitles(
                          showTitles: false, reservedSize: 0, interval: 1),
                    ),
                  ),
                  barGroups: BarData.barData
                      .map(
                        (data) => BarChartGroupData(
                          x: data.id,
                          barRods: [
                            BarChartRodData(
                              width: 18.0,
                              toY: data.y,
                              gradient: const LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: <Color>[
                                  Color.fromARGB(255, 12, 167, 131),
                                  Color.fromARGB(255, 4, 74, 58),
                                ],
                              ),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(8)),
                            ),
                          ],
                        ),
                      )
                      .toList(),
                ),
              ),
            ),
            const SizedBox(
              height: 18.0,
            )
          ],
        ),
      ),
    );
  }
}
