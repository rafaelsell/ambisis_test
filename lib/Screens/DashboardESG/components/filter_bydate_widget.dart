import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Filter extends StatefulWidget {
  const Filter({super.key});

  @override
  State<Filter> createState() => _FilterState();
}

class _FilterState extends State<Filter> {
  int? filterIndex = 3;
  String initialDateMock =
      DateFormat('dd/MM/yyyy').format(DateTime(2006, 01, 01)).toString();
  String finalDateMock =
      DateFormat('dd/MM/yyyy').format(DateTime.now()).toString();

  @override
  Widget build(BuildContext context) {
    Widget customRadioButton(String text, int index) {
      return ClipRRect(
        borderRadius: const BorderRadius.all(
          Radius.circular(18),
        ),
        child: Container(
          decoration: BoxDecoration(
            gradient: (filterIndex == index)
                ? const LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: <Color>[
                      Color.fromARGB(255, 12, 167, 131),
                      Color.fromARGB(255, 4, 74, 58),
                    ],
                  )
                : LinearGradient(
                    colors: <Color>[
                      Theme.of(context).unselectedWidgetColor,
                      Theme.of(context).unselectedWidgetColor,
                    ],
                  ),
          ),
          child: ElevatedButton(
            style: ButtonStyle(
              padding: MaterialStateProperty.all(
                const EdgeInsets.symmetric(vertical: 0, horizontal: 18),
              ),
              surfaceTintColor: MaterialStateProperty.all(Colors.transparent),
              overlayColor: MaterialStateProperty.all(Colors.transparent),
              backgroundColor: MaterialStateProperty.all(Colors.transparent),
              shadowColor: MaterialStateProperty.all(Colors.transparent),
              elevation: MaterialStateProperty.all(0),
              foregroundColor: MaterialStateProperty.all(
                  (filterIndex == index) ? Colors.white : Colors.black),
            ),
            onPressed: () {
              setState(() {
                filterIndex = index;
              });
            },
            child: Text(
              text,
              style: const TextStyle().copyWith(
                  fontWeight: FontWeight.w900,
                  fontSize: 12,
                  color: (filterIndex == index)
                      ? Theme.of(context).primaryColorLight
                      : Theme.of(context).secondaryHeaderColor),
            ),
          ),
        ),
      );
    }

    Widget customDateInput() {
      return Padding(
        padding: const EdgeInsets.symmetric(vertical: 18.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Icon(Icons.calendar_today),
            const SizedBox(width: 12.0),
            Expanded(
              child: Container(
                height: 40.0,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(
                    Radius.circular(18),
                  ),
                  border: Border.all(
                    width: 1.5,
                    color: Theme.of(context).unselectedWidgetColor,
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: TextButton(
                        onPressed: () => {},
                        child: Text(
                          initialDateMock,
                          style: const TextStyle().copyWith(
                              color: Theme.of(context).primaryColorDark,
                              fontWeight: FontWeight.w900,
                              letterSpacing: 1),
                        ),
                      ),
                    ),
                    Container(
                      width: 2.0,
                      height: 20.0,
                      decoration: BoxDecoration(
                          borderRadius: const BorderRadius.all(
                            Radius.circular(18),
                          ),
                          color: Theme.of(context).unselectedWidgetColor),
                    ),
                    Expanded(
                      child: TextButton(
                        onPressed: () => {},
                        child: Text(
                          finalDateMock,
                          style: const TextStyle().copyWith(
                              color: Theme.of(context).primaryColorDark,
                              fontWeight: FontWeight.w900,
                              letterSpacing: 1),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(width: 8.0),
            IconButton(
              onPressed: () => {},
              icon: const Icon(Icons.close),
            ),
          ],
        ),
      );
    }

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
            const Text(
              'Filter',
              style: TextStyle(
                  fontWeight: FontWeight.w900,
                  fontSize: 22.0,
                  letterSpacing: 1),
            ),
            const SizedBox(height: 12.0),
            SizedBox(
              width: double.infinity,
              child: Wrap(
                runSpacing: 10,
                alignment: WrapAlignment.spaceBetween,
                children: [
                  customRadioButton("2 anos", 0),
                  customRadioButton("5 anos", 1),
                  customRadioButton("7 anos", 2),
                  customRadioButton("Por data", 3),
                ],
              ),
            ),
            (filterIndex == 3 ? customDateInput() : Container())
          ],
        ),
      ),
    );
  }
}
