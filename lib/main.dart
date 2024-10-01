import 'package:flutter/material.dart';

import 'custom_search_deligate.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter Search Demo'),
        ),
        //  The Builder widget is used to obtain a new BuildContext.
        floatingActionButton: Builder(
          builder: (context) => FloatingActionButton(
            child: const Icon(Icons.search),
            onPressed: () async {
              await showSearch(
                context: context,
                delegate: CustomSearchDelegate(),
              );
            },
          ),
        ),
      ),
    );
  }
}
