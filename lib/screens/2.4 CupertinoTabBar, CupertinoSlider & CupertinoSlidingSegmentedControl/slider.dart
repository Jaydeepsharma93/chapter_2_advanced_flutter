import 'package:chapter_2_advanced_flutter/screens/2.4%20CupertinoTabBar,%20CupertinoSlider%20&%20CupertinoSlidingSegmentedControl/provider/sliderprovider.dart';
import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

class SliderScreen extends StatelessWidget {
  const SliderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      debugShowCheckedModeBanner: false,
      home: CupertinoPageScaffold(
        backgroundColor: CupertinoColors.systemGrey6,
        navigationBar: const CupertinoNavigationBar(
          leading: Icon(CupertinoIcons.back),
          middle: Text("Display & Brightness"),
        ),
        child: Column(
          children: [
            const SizedBox(height: 65),
            CupertinoListSection.insetGrouped(
              header: const Text(
                "APPEARANCE",
                style: TextStyle(
                    fontSize: 15,
                    color: CupertinoColors.systemGrey,
                    fontWeight: FontWeight.w400),
              ),
              dividerMargin: -10,
              children: [
                Container(
                  child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 15,horizontal: 20),
                            child: Column(
                              children: [
                                Container(
                                  height: 150,
                                  width: 100,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                          bottomLeft: Radius.circular(25)),
                                      image: DecorationImage(
                                          image: AssetImage(
                                              'assets/img/images.jpg'))),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text('Light'),
                                ),
                                CupertinoRadio(
                                  value: Brightness.light,
                                  groupValue: Provider.of<SliderProvider>(context,listen: true).brightness,
                                  onChanged: (value) {
                                    Provider.of<SliderProvider>(context,listen: false).changeTheme(value ?? Brightness.light);
                                  },
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 15),
                            child: Column(
                              children: [
                                Container(
                                  height: 150,
                                  width: 100,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                          bottomLeft: Radius.circular(25)),
                                      image: DecorationImage(
                                          image: AssetImage(
                                              'assets/img/th1.jpg'))),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text('Dark'),
                                ),
                                CupertinoRadio(
                                  value: Brightness.dark,
                                  groupValue: Provider.of<SliderProvider>(context,listen: true).brightness,
                                  onChanged: (value) {
                                    Provider.of<SliderProvider>(context,listen: false).changeTheme(value ?? Brightness.dark);
                                  },
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Automatic',
                      style: TextStyle(
                          fontSize: 20, fontWeight: FontWeight.w400),
                    ),
                    CupertinoSwitch(
                      value: Provider.of<SliderProvider>(context,
                          listen: true)
                          .isAutomatic,
                      onChanged: (value) {
                        Provider.of<SliderProvider>(context,
                            listen: false)
                            .automatic(value);
                      },
                    )
                  ],
                ),
              ],
            ),
            CupertinoListSection.insetGrouped(
              footer: const Text(
                "Automatically adapt iPhone display based on ambient lighting conditions to make colors appear consistent in different environments.",
                style: TextStyle(
                    fontSize: 15,
                    color: CupertinoColors.systemGrey,
                    fontWeight: FontWeight.w400),
              ),
              header: const Text(
                "BRIGHTNESS",
                style: TextStyle(
                    fontSize: 15,
                    color: CupertinoColors.systemGrey,
                    fontWeight: FontWeight.w400),
              ),
              dividerMargin: -10,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(CupertinoIcons.sun_min_fill,color: CupertinoColors.systemGrey,),

                    SizedBox(
                      width: 280,
                      child: CupertinoSlider(
                        min: 0,
                        max: 100,
                        divisions: 10,
                        value: Provider.of<SliderProvider>(context, listen: true).Rangeslindervalue,
                        onChanged: (value) {
                          Provider.of<SliderProvider>(context,listen: false).rangeSliderChangeValue(value);
                        },
                      ),
                    ),
                    Icon(CupertinoIcons.sun_max_fill,color: CupertinoColors.systemGrey),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 10.0, horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'True Tone',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w400),
                      ),
                      CupertinoSwitch(
                        value: Provider.of<SliderProvider>(context,
                            listen: true)
                            .isTruetone,
                        onChanged: (value) {
                          Provider.of<SliderProvider>(context,
                              listen: false)
                              .truetone(value);
                        },
                      )
                    ],
                  ),
                ),
              ],
            ),
            CupertinoListSection(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 10.0, horizontal: 20),
                  child: Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Night Shift',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w400),
                      ),
                      SizedBox(
                        width: 130,
                      ),
                      Text(
                        'Sunset to Sunrise',
                        style: TextStyle(
                            color: CupertinoColors.systemGrey,
                            fontWeight: FontWeight.w500),
                      ),
                      Icon(
                        CupertinoIcons.right_chevron,
                        color: CupertinoColors.systemGrey3,
                      )
                    ],
                  ),
                ),
              ],
            ),
            CupertinoListSection(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 10.0, horizontal: 20),
                  child: Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Auto-Lock',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w400),
                      ),
                      SizedBox(
                        width: 187,
                      ),
                      Text(
                        '3 Minutes',
                        style: TextStyle(
                            color: CupertinoColors.systemGrey,
                            fontWeight: FontWeight.w500),
                      ),
                      Icon(
                        CupertinoIcons.right_chevron,
                        color: CupertinoColors.systemGrey3,
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 10.0, horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Raise to wake',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w400),
                      ),
                      CupertinoSwitch(
                        value: Provider.of<SliderProvider>(context,
                            listen: true)
                            .isRaiseToWake,
                        onChanged: (value) {
                          Provider.of<SliderProvider>(context,
                              listen: false)
                              .raisetowake(value);
                        },
                      )
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

