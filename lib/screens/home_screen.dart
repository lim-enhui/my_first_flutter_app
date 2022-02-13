import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../controller/smiley_controller.dart';
import '../models/my_happiness_index_data.dart';
import '../models/my_info_data.dart';
import '../models/my_info_model.dart';
import '../widgets/myslider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final MyInfoModel? myInfo = context.watch<MyInfoData>().info;
    final String myHappinessAnimationIndex =
        context.watch<MyHappinessIndexData>().myHappinessAnimationIndex;
    SmileyController _smileyController = SmileyController();

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: (myInfo != null)
              ? [
                  Text('Hi ${myInfo.name}, How are you today?'),
                  const SizedBox(height: 20.0),
                  const MySlider(),
                  SizedBox(
                    height: 300.0,
                    width: 300.0,
                    child: FlareActor(
                      'assets/happiness_emoji.flr',
                      alignment: Alignment.center,
                      fit: BoxFit.contain,
                      animation: myHappinessAnimationIndex,
                      controller: _smileyController,
                    ),
                  ),
                ]
              : [
                  const Text('Tell me your name?'),
                ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, '/add_name');
        },
        child: const Icon(Icons.edit),
      ),
    );
  }
}
