import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/my_happiness_index_data.dart';

class MySlider extends StatelessWidget {
  const MySlider({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 400.0,
      child: Slider(
        value: context.watch<MyHappinessIndexData>().myHappinessIndex,
        max: 5,
        min: 1,
        divisions: 4,
        label: context
            .watch<MyHappinessIndexData>()
            .myHappinessIndex
            .ceil()
            .toString(),
        onChanged: (double value) =>
            context.read<MyHappinessIndexData>().updateHappiness(value),
      ),
    );
  }
}
