import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../Provider/provider.dart';

class Screen_Android extends StatelessWidget {
  const Screen_Android({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                    onPressed: () async {
                      DateTime selectedDate = await showDatePicker(
                            context: context,
                            // barrierColor:Colors.yellow,
                            firstDate: DateTime(1950),
                            lastDate: DateTime(2050),
                            initialDate: DateTime.now(),
                          ) ??
                          DateTime.now();
                      print(selectedDate);
                    },
                    icon: const Icon(
                      Icons.date_range,
                      size: 30,
                    )),
                const Text(
                  'Date',
                  style: TextStyle(color: Colors.teal, fontSize: 30),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                    onPressed: () async {
                      TimeOfDay selectedTime = await showTimePicker(
                              context: context, initialTime: TimeOfDay.now()) ??
                          TimeOfDay.now();
                    },
                    icon: const Icon(
                      Icons.timer_outlined,
                      size: 30,
                    )),
                const Text(
                  'Time',
                  style: TextStyle(color: Colors.teal, fontSize: 30),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            title: const Text('Phone Ringtone'),
                            content: SizedBox(
                              height: 200,
                              width: 350,
                              child: Column(
                                children: [
                                  const Divider(),
                                  SingleChildScrollView(
                                    child: Container(
                                      height: 168,
                                      child: SingleChildScrollView(
                                        child: Column(
                                          children: [
                                            RadioListTile(
                                              title: Text('None'),
                                              value: 'None',
                                              groupValue: Provider.of<
                                                          DialogBoxProvider>(
                                                      context,
                                                      listen: true)
                                                  .selectedRingtone,
                                              onChanged: (value) {
                                                Provider.of<DialogBoxProvider>(
                                                        context,
                                                        listen: false)
                                                    .setDialog(
                                                        value.toString());
                                              },
                                            ),
                                            RadioListTile(
                                              title: Text('Callisto'),
                                              value: 'Callisto',
                                              groupValue: Provider.of<
                                                          DialogBoxProvider>(
                                                      context,
                                                      listen: true)
                                                  .selectedRingtone,
                                              onChanged: (value) {
                                                Provider.of<DialogBoxProvider>(
                                                        context,
                                                        listen: false)
                                                    .setDialog(
                                                        value.toString());
                                              },
                                            ),
                                            RadioListTile(
                                              title: Text('Ganymede'),
                                              value: 'Ganymede',
                                              groupValue: Provider.of<
                                                          DialogBoxProvider>(
                                                      context,
                                                      listen: true)
                                                  .selectedRingtone,
                                              onChanged: (value) {
                                                Provider.of<DialogBoxProvider>(
                                                        context,
                                                        listen: false)
                                                    .setDialog(
                                                        value.toString());
                                              },
                                            ),
                                            RadioListTile(
                                              title: Text('Luna'),
                                              value: 'Luna',
                                              groupValue: Provider.of<
                                                          DialogBoxProvider>(
                                                      context,
                                                      listen: true)
                                                  .selectedRingtone,
                                              onChanged: (value) {
                                                Provider.of<DialogBoxProvider>(
                                                        context,
                                                        listen: false)
                                                    .setDialog(
                                                        value.toString());
                                              },
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  const Divider()
                                ],
                              ),
                            ),
                            actions: [
                              TextButton(
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                                child: const Text('Cancel'),
                              ),
                              TextButton(
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                                child: const Text('Ok'),
                              ),
                            ],
                          );
                        },
                      );
                    },
                    icon: const Icon(
                      Icons.phonelink_ring,
                      size: 32,
                    )),
                const Text(
                  'Ringtone',
                  style: TextStyle(color: Colors.teal, fontSize: 30),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
