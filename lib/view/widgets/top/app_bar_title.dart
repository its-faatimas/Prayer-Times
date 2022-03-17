import 'package:flutter/material.dart';
import 'package:adhan/core/components/exporting_packages.dart';

class AppBarTitle extends StatelessWidget {
  const AppBarTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      title: Text('Assalomu alaykum'),
      subtitle: Text("Abdullohov Abdulloh"),
      trailing: Wrap(
        crossAxisAlignment: WrapCrossAlignment.center,
        children: [
          Icon(Icons.search),
          Icon(Icons.search),
          CircleAvatar()
        ],
      ),
    );
  }
}
