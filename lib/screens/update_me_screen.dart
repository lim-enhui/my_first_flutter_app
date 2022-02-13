import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/my_info_data.dart';

class UpdateMeScreen extends StatelessWidget {
  const UpdateMeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String newName = '';

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Tell Me Your Name',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 30.0,
                color: Colors.lightBlueAccent,
              ),
            ),
            SizedBox(
              width: 400.0,
              child: TextField(
                autofocus: true,
                textAlign: TextAlign.center,
                onChanged: (newText) {
                  newName = newText;
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextButton(
                onPressed: () {
                  Provider.of<MyInfoData>(context, listen: false)
                      .updateName(newName);
                  Navigator.pop(context);
                },
                style: TextButton.styleFrom(
                  primary: Colors.white,
                  backgroundColor: Colors.lightBlueAccent,
                ),
                child: const Text('Done'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
