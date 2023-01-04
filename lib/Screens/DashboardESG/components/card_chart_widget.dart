import 'package:ambisis_test/Screens/DashboardESG/utils/linear_gradient_progressbar.dart';
import 'package:flutter/material.dart';

class CardChart extends StatefulWidget {
  final String title;
  final IconData cardIcon;
  final int amountValue;
  final int completedValue;
  final double? progressState;

  const CardChart(
      {super.key,
      required this.title,
      required this.cardIcon,
      required this.amountValue,
      required this.completedValue,
      required this.progressState});

  @override
  State<CardChart> createState() => _CardChartState();
}

class _CardChartState extends State<CardChart> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColorLight,
        borderRadius: const BorderRadius.all(
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
                  widget.cardIcon,
                  size: 32.0,
                  color: Theme.of(context).primaryColorDark,
                ),
                const SizedBox(
                  width: 8.0,
                ),
                Text(
                  widget.title,
                  style: TextStyle(
                      fontWeight: FontWeight.w900,
                      fontSize: 16.0,
                      color: Theme.of(context).primaryColorDark,
                      letterSpacing: 1),
                ),
                const Spacer(),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    RichText(
                      text: TextSpan(
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 12,
                            color: Theme.of(context).primaryColorDark),
                        text: 'Total: ',
                        children: [
                          TextSpan(
                            text: widget.amountValue.toString(),
                            style: TextStyle(
                                fontWeight: FontWeight.w900,
                                color: Theme.of(context).primaryColor,
                                letterSpacing: 0.8),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 4.0,
                    ),
                    RichText(
                      text: TextSpan(
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 12,
                          color: Theme.of(context).primaryColorDark,
                        ),
                        text: 'Completado: ',
                        children: [
                          TextSpan(
                            text: widget.completedValue.toString(),
                            style: TextStyle(
                                fontWeight: FontWeight.w900,
                                color: Theme.of(context).primaryColor,
                                letterSpacing: 0.8),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 18.0,
            ),
            LinearGradientProgressBar(
              progressValue: widget.progressState!,
            )
          ],
        ),
      ),
    );
  }
}
