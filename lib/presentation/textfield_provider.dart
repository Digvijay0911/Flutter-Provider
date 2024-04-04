import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_state_management/controller/textfield_controller.dart';

class TextFieldProvider extends StatelessWidget {
  const TextFieldProvider({super.key});

  @override
  Widget build(BuildContext context) {
    // ----------------------------------------------------------------------------

    final textFieldController =
        Provider.of<TextfieldController>(context, listen: false);
    // ============================================================================
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            TextFormField(
              controller: textFieldController.name,
              decoration: const InputDecoration(
                hintText: "Enter your name",
              ),
              keyboardType: TextInputType.text,
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () {
                  textFieldController.setName();
                },
                child: const Text("Done")),
            const SizedBox(
              height: 20,
            ),
            Consumer<TextfieldController>(builder: (context, value, child) {
              return Text("Your name is: ${value.getName}");
            })
          ],
        ),
      ),
    );
  }
}
