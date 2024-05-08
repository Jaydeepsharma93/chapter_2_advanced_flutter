import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class IosScreen extends StatelessWidget {
  const IosScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 200,
              child: CupertinoDatePicker(
                mode: CupertinoDatePickerMode.date,
                initialDateTime: DateTime.now(),
                onDateTimeChanged: (DateTime newDateTime) {},
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 30),
              child: Divider(),
            ),
            SizedBox(height: 150,
            child: CupertinoTimerPicker(
              onTimerDurationChanged: (value) {
                    (Duration value) {};
              },
            ),),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 30),
              child: Divider(),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: () {
                    showCupertinoModalPopup(
                      context: context,
                      builder: (BuildContext builder) {
                        return CupertinoActionSheet(
                          title: Text(
                            'Favorite Dessert',
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.w500),
                          ),
                          message: Padding(
                            padding: EdgeInsets.symmetric(vertical: 14),
                            child: Text(
                              'Please select the best dessert from the\noptions below.',
                              style: TextStyle(fontSize: 15),
                            ),
                          ),
                          actions: [
                            CupertinoActionSheetAction(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: Text(
                                'Profiteroles',
                                style: TextStyle(
                                    color: Colors.blue,
                                    fontSize: 23,
                                    fontWeight: FontWeight.w400,
                                    letterSpacing: 1),
                              ),
                            ),

                            CupertinoActionSheetAction(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: Text(
                                'Cannolis',
                                style: TextStyle(
                                    color: Colors.blue,
                                    fontSize: 23,
                                    fontWeight: FontWeight.w400,
                                    letterSpacing: 1),
                              ),
                            ),

                            CupertinoActionSheetAction(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: Text(
                                'Trifle',
                                style: TextStyle(
                                    color: Colors.blue,
                                    fontSize: 23,
                                    fontWeight: FontWeight.w400,
                                    letterSpacing: 1),
                              ),
                            ),
                          ],
                          cancelButton: CupertinoActionSheetAction(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            isDefaultAction: true,
                            child: const Text(
                              'Cancel',
                              style: TextStyle(
                                  color: Colors.blue,
                                  fontSize: 23,
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                        );
                      },
                    );
                  },
                  icon: Icon(Icons.date_range),
                ),
                Text(
                  'Action Sheet',
                  style: TextStyle(
                    fontSize: 30,
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}