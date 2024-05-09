import 'package:flutter/cupertino.dart';

class CupertinoListSection2 extends StatelessWidget {
  const CupertinoListSection2({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
          middle: Text("Settings"),
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(top: 80),
            child: CustomScrollView(
              slivers: [
                SliverFillRemaining(
                  // hasScrollBody: true,
                  child: Column(
                    children: [
                      CupertinoListSection(
                        children: [
                          CupertinoListTile.notched(
                            title: const Text(
                              'General',
                              style: TextStyle(fontSize: 21.5),
                            ),
                            leading: Image.asset('assets/img/1.png'),
                            trailing: const Icon(
                              CupertinoIcons.forward,
                              color: CupertinoColors.inactiveGray,
                            ),
                          ),
                          CupertinoListTile.notched(
                            title: const Text(
                              'Display & Brightness ',
                              style: TextStyle(fontSize: 21.5),
                            ),
                            leading: Image.asset('assets/img/2.png'),
                            trailing: const Icon(
                              CupertinoIcons.forward,
                              color: CupertinoColors.inactiveGray,
                            ),
                          ),
                          CupertinoListTile.notched(
                            title: const Text(
                              'Wallpaper',
                              style: TextStyle(fontSize: 21.5),
                            ),
                            leading: Image.asset('assets/img/3.jpg'),
                            trailing: const Icon(
                              CupertinoIcons.forward,
                              color: CupertinoColors.inactiveGray,
                            ),
                          ),
                          CupertinoListTile.notched(
                            title: const Text(
                              'Sounds',
                              style: TextStyle(fontSize: 21.5),
                            ),
                            leading: Image.asset('assets/img/4.jpg'),
                            trailing: const Icon(
                              CupertinoIcons.forward,
                              color: CupertinoColors.inactiveGray,
                            ),
                          ),
                          CupertinoListTile.notched(
                            title: const Text(
                              'Touch ID & Passcode',
                              style: TextStyle(fontSize: 21.5),
                            ),
                            leading: Image.asset('assets/img/5.png'),
                            trailing: const Icon(
                              CupertinoIcons.forward,
                              color: CupertinoColors.inactiveGray,
                            ),
                          ),
                          CupertinoListTile.notched(
                            title: const Text(
                              'Privacy',
                              style: TextStyle(fontSize: 21.5),
                            ),
                            leading: Image.asset('assets/img/6.jpg'),
                            trailing: const Icon(
                              CupertinoIcons.forward,
                              color: CupertinoColors.inactiveGray,
                            ),
                          ),
                        ],
                      ),
                      CupertinoListSection(
                        children: [
                          CupertinoListTile.notched(
                            title: const Text(
                              'iCloud',
                              style: TextStyle(fontSize: 21,
                                  fontWeight: FontWeight.w400
                              ),

                            ),
                            subtitle: Text('jaydeepsharma@gmali.com'),
                            leading: Image.asset('assets/img/7.png'),
                            trailing: const Icon(
                              CupertinoIcons.forward,
                              color: CupertinoColors.inactiveGray,
                            ),
                          ),
                          CupertinoListTile.notched(
                            title: const Text(
                              'iTune & App Store ',
                              style: TextStyle(fontSize: 21.5),
                            ),
                            leading: Image.asset('assets/img/8.png'),
                            trailing: const Icon(
                              CupertinoIcons.forward,
                              color: CupertinoColors.inactiveGray,
                            ),
                          ),
                          CupertinoListTile.notched(
                            title: const Text(
                              'Passbook & Apple Pay',
                              style: TextStyle(fontSize: 21.5),
                            ),
                            leading: Image.asset('assets/img/9.jpg'),
                            trailing: const Icon(
                              CupertinoIcons.forward,
                              color: CupertinoColors.inactiveGray,
                            ),
                          ),
                        ],
                      ),
                      CupertinoListSection(
                        children: [
                          CupertinoListTile.notched(
                            title: const Text(
                              'Mail, Contacts, Calendars',
                              style: TextStyle(fontSize: 21.5),
                            ),
                            leading: Image.asset('assets/img/10.png'),
                            trailing: const Icon(
                              CupertinoIcons.forward,
                              color: CupertinoColors.inactiveGray,
                            ),
                          ),
                          CupertinoListTile.notched(
                            title: const Text(
                              'Notes ',
                              style: TextStyle(fontSize: 21.5),
                            ),
                            leading: Image.asset('assets/img/11.png'),
                            trailing: const Icon(
                              CupertinoIcons.forward,
                              color: CupertinoColors.inactiveGray,
                            ),
                          ),
                          CupertinoListTile.notched(
                            title: const Text(
                              'Reminders',
                              style: TextStyle(fontSize: 21.5),
                            ),
                            leading: Image.asset('assets/img/12.png'),
                            trailing: const Icon(
                              CupertinoIcons.forward,
                              color: CupertinoColors.inactiveGray,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
