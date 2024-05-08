import 'package:flutter/cupertino.dart';

class CupertinoIos extends StatelessWidget {
  const CupertinoIos({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      debugShowCheckedModeBanner: false,
      home: CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
          middle: Text('IOS'),
          trailing: CupertinoSwitch(
            value: true,
            onChanged: (value) {},
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CupertinoListTile(
              leading: Icon(CupertinoIcons.settings),
              trailing:Icon(CupertinoIcons.arrow_right),
              title: Text('General'),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CupertinoButton(
                  child: Icon(
                    CupertinoIcons.list_bullet,
                    size: 30,
                  ),
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
                                    color: CupertinoColors.activeBlue,
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
                                    color: CupertinoColors.activeBlue,
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
                                    color: CupertinoColors.activeBlue,
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
                                  color: CupertinoColors.activeBlue,
                                  fontSize: 23,
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                        );
                      },
                    );
                  },
                ),
              ],
            ),
            CupertinoActivityIndicator(
              radius: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CupertinoButton(
                  child: Text(
                    'Alert Dialog',
                    style: TextStyle(fontSize: 20),
                  ),
                  onPressed: () {
                    showCupertinoModalPopup(
                      context: context,
                      builder: (BuildContext builder) {
                        return CupertinoAlertDialog(
                          title: Text('Document Changed'),
                          actions: [
                            CupertinoButton(
                                child: Text('Cancel'), onPressed: () {}),
                            CupertinoButton(
                                child: Text('Save'), onPressed: () {})
                          ],
                        );
                      },
                    );
                  },
                ),
              ],
            ),
            CupertinoButton.filled(
              child: Text('Enter'),
              onPressed: () {},
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CupertinoButton(
                  child: Text('Date_Picker'),
                  onPressed: () {
                    showCupertinoModalPopup(
                      context: context,
                      builder: (BuildContext builder) {
                        return Container(
                          height: 200,
                          child: CupertinoDatePicker(
                            mode: CupertinoDatePickerMode.date,
                            initialDateTime: DateTime.now(),
                            onDateTimeChanged: (DateTime newDateTime) {},
                          ),
                        );
                      },
                    );
                  },
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CupertinoButton(
                  child: Text('Timer_Picker'),
                  onPressed: () {
                    showCupertinoModalPopup(
                      context: context,
                      builder: (BuildContext builder) {
                        return Container(
                          height: 200,
                          child: CupertinoTimerPicker(
                            onTimerDurationChanged: (value) {
                              (Duration value) {};
                            },
                          ),
                        );
                      },
                    );
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
