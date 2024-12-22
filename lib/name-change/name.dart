import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:multi_provider/name-change/name_provider.dart';
import 'package:provider/provider.dart';

class Name extends StatelessWidget {
  Name({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text('Provider'),
      ),
      body: Center(
        child: Consumer<NameProvider>(
          builder: (context, providerValue, child) {
            return Column(
              children: [
                Text(
                  "provider value = ${providerValue.name}", //! name change 5 seconds after
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 100,
                ),
                CupertinoButton(
                  color: Colors.orange,
                  child: Text("Provider event"),
                  onPressed: () {
                    providerValue.getName(
                        "Update After 5 Sec"); //! name change 5 seconds after
                  },
                )
              ],
            );
          },
        ),
      ),
    );
  }
}
