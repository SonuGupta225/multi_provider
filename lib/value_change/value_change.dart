import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:multi_provider/value_change/value_provider.dart';
import 'package:provider/provider.dart';

import '../app_state_provide.dart';

class ValueChange extends StatelessWidget {
  ValueChange({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text('Provider'),
      ),
      body: Center(
        child: Consumer<ValueProvider>(
          builder: (context, providerValue, child) {
            return Column(
              children: [
                Text(
                  "provider value ${providerValue.start}", //! integerValue change 5 seconds after
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 100,
                ),
                CupertinoButton(
                  color: Colors.orange,
                  child: Text("Provider event"),
                  onPressed: () {
                    providerValue
                        .getTimer(); //! integerValue change 5 seconds after
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
