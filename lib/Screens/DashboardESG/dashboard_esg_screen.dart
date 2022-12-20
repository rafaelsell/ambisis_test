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
          foregroundColor: Colors.black,
          backgroundColor: Colors.white,
          toolbarHeight: 80,
          elevation: 0,
          title: const Text('Dashboard ESG'),
          actions: [
            IconButton(
              onPressed: () => {},
              icon: const Icon(Icons.cloud),
            ),
            IconButton(
              onPressed: () => {},
              icon: const Icon(Icons.chat),
            ),
            IconButton(
              onPressed: () => {},
              icon: const Icon(Icons.menu),
            ),
          ],
          leading: IconButton(
            onPressed: () => {},
            icon: const Icon(Icons.chevron_left_rounded),
          ),
        ),
        body: Container(
          color: const Color(0xffD6D6D8),
          child: Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 18.0, horizontal: 18.0),
            child: Column(children: const [Filter()]),
          ),
        ));
  }
}
