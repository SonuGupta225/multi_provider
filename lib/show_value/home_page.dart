import 'package:flutter/material.dart';
import 'package:multi_provider/show_value/home_provider.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // ! Create instance of provider
    //! 1 Way
    HomeProvider provider = Provider.of<HomeProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Provider'),
      ),
      body: Center(
        // ! Create instance of provider
        //! 2 Way
        child: Consumer<HomeProvider>(
          builder: (context, providerValue, child) {
            return Text(
              //! 1 Way Call Provider
              // "provider value ${provider.temp}",
              //! 2 Way Call Provider
              "provider value ${providerValue.temp}",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            );
          },
        ),
      ),
    );
  }
}
