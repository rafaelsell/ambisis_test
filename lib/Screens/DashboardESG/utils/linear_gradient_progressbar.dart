import 'package:flutter/material.dart';

class LinearGradientProgressBar extends StatelessWidget {
  final double progressValue;

  const LinearGradientProgressBar({
    super.key,
    required this.progressValue,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.all(
        Radius.circular(18),
      ),
      child: Stack(
        alignment: Alignment.centerLeft,
        children: [
          Container(
            decoration:
                BoxDecoration(color: Theme.of(context).unselectedWidgetColor),
            width: double.infinity,
            child: const SizedBox(height: 14.0),
          ),
          LayoutBuilder(
              builder: (BuildContext context, BoxConstraints constraints) {
            return Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(18.0),
                    bottomRight: Radius.circular(18.0)),
                gradient: LinearGradient(
                  begin: Alignment.centerRight,
                  end: Alignment.centerLeft,
                  colors: <Color>[
                    Color.fromARGB(255, 12, 167, 131),
                    Color.fromARGB(255, 4, 74, 58),
                  ],
                ),
              ),
              width: (constraints.maxWidth) * progressValue,
              child: const SizedBox(height: 14.0),
            );
          }),
        ],
      ),
    );
  }
}
