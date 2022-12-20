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
      return ElevatedButton(
          style: ButtonStyle(
            elevation: MaterialStateProperty.all(0),
            foregroundColor: MaterialStateProperty.all(
                (filterIndex == index) ? Colors.white : Colors.black),
            backgroundColor: MaterialStateProperty.all((filterIndex == index)
                ? Colors.green
                : const Color.fromARGB(10, 4, 74, 58)),
          ),
          onPressed: () {
            setState(() {
              filterIndex = index;
            });
          },
          child: Text(text));
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
                    width: 1.0,
                    color: const Color.fromARGB(47, 68, 68, 68),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: TextButton(
                        onPressed: () => {},
                        child: Text(initialDateMock),
                      ),
                    ),
                    Container(
                      width: 2.0,
                      height: 20.0,
                      decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(
                            Radius.circular(18),
                          ),
                          color: Color.fromARGB(47, 68, 68, 68)),
                    ),
                    Expanded(
                      child: TextButton(
                        onPressed: () => {},
                        child: Text(finalDateMock),
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
              style: TextStyle(fontWeight: FontWeight.w800, fontSize: 18.0),
            ),
            const SizedBox(height: 12.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                customRadioButton("2 anos", 0),
                customRadioButton("5 anos", 1),
                customRadioButton("7 anos", 2),
                customRadioButton("Por data", 3),
              ],
            ),
            (filterIndex == 3 ? customDateInput() : Container())
          ],
        ),
      ),
    );
  }
}
