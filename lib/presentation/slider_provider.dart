import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_state_management/controller/slider_controller.dart';

class SliderInFlutter extends StatelessWidget {
  const SliderInFlutter({super.key});

  @override
  Widget build(BuildContext context) {
    // ------------------------------------------------------

    final sliderController =
        Provider.of<SliderController>(context, listen: false);

    // ======================================================
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
      ),
      body: Column(
        children: [
          Consumer<SliderController>(builder: (context, value, child) {
            return Slider(
              value: value.getSliderValue,
              onChanged: (s) {
                value.setSliderValue(s);
              },
              min: 10,
              max: 252,
            );
          }),
          Consumer<SliderController>(builder: (context, value, child) {
            return Text("Slider value: ${value.getSliderValue.toInt()}");
          }),
          SizedBox(height: 50,),
          Consumer<SliderController>(builder: (context, value, child) {
            return Container(
              height: 100,
              width: value.getSliderValue,

              decoration: BoxDecoration(
              color:  Color.fromARGB(value.getSliderValue.toInt(), 200, 20, 7),
              borderRadius: BorderRadius.circular(12),

              ),
            );
          }),
        ],
      ),
    );
  }
}
