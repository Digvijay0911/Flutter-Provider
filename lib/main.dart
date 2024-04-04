import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_state_management/controller/counter_controller.dart';
import 'package:provider_state_management/controller/slider_controller.dart';
import 'package:provider_state_management/controller/textfield_controller.dart';
import 'package:provider_state_management/presentation/textfield_provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    // ---------------------------------------------------------------------
    return MultiProvider(providers: [
      ChangeNotifierProvider(create: (context)=>CounterController()),
      ChangeNotifierProvider(create: (context)=>SliderController()),
      ChangeNotifierProvider(create: (context)=>TextfieldController()),

    ],
    child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const TextFieldProvider(),
      ),);
    // =====================================================================
  }
}
