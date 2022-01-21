import 'package:flutter/material.dart';
import 'package:adhan/core/components/exporting_packages.dart';

class AppBarTitle extends StatelessWidget {
  const AppBarTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text('Assalomu alaykum'),
      subtitle: Text("Bahromjon Polat"),
      trailing: Wrap(
        children: [
          Icon(Icons.search),
          Icon(Icons.search),
          Icon(Icons.search),
        ],
      ),
    );
  }
}
