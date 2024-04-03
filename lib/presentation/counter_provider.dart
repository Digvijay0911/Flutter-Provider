import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_state_management/controller/counter_controller.dart';

class Counter_In_Provider extends StatelessWidget {
  const Counter_In_Provider({super.key});

  @override
  Widget build(BuildContext context) {
    // ------------------------------------------------------

    final countController =
        Provider.of<CounterController>(context, listen: false);

    // ======================================================
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Center(child:
                Consumer<CounterController>(builder: (context, value, child) {
              return Text(
                value.getcount.toString(),
                style: const TextStyle(fontSize: 30),
              );
            })),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                    onPressed: () {
                      countController.increment();
                    },
                    child: const Text("INCREMENT")),
                ElevatedButton(
                    onPressed: () {
                      countController.decrement();
                    },
                    child: const Text("DECREMENT")),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
