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
                  widget.cardIcon,
                  size: 32.0,
                ),
                const SizedBox(
                  width: 8.0,
                ),
                Text(
                  widget.title,
                  style: const TextStyle(
                      fontWeight: FontWeight.w800, fontSize: 18.0),
                ),
                const Spacer(),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    RichText(
                      text: TextSpan(
                        style: const TextStyle(fontWeight: FontWeight.w500),
                        text: 'Total: ',
                        children: [
                          TextSpan(
                            text: widget.amountValue.toString(),
                            style: const TextStyle(
                                fontWeight: FontWeight.w900,
                                color: Colors.green),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 4.0,
                    ),
                    RichText(
                      text: TextSpan(
                        style: const TextStyle(fontWeight: FontWeight.w500),
                        text: 'Completado: ',
                        children: [
                          TextSpan(
                            text: widget.completedValue.toString(),
                            style: const TextStyle(
                                fontWeight: FontWeight.w900,
                                color: Colors.green),
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
            ClipRRect(
              borderRadius: const BorderRadius.all(
                Radius.circular(18),
              ),
              child: LinearProgressIndicator(
                value: widget.progressState,
                minHeight: 15,
                color: Colors.green,
                backgroundColor: const Color.fromARGB(10, 4, 74, 58),
              ),
            )
          ],
        ),
      ),
    );
  }
}
