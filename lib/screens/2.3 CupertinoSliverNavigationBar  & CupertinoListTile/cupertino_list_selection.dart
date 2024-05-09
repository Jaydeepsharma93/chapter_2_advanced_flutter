import 'package:flutter/cupertino.dart';

class ListSelection extends StatelessWidget {
  const ListSelection({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      debugShowCheckedModeBanner: false,
      home: CupertinoPageScaffold(
        backgroundColor: CupertinoColors.systemGrey6,
        navigationBar: const CupertinoNavigationBar(
          previousPageTitle: "Back",
          middle: Text("Cupertino List Enhanced"),
        ),
        child: Column(
          children: [
            const SizedBox(height: 65),
            CupertinoListSection.insetGrouped(
              footer: const Text(
                "Choose a single item from a list of options.",
                style: TextStyle(
                    fontSize: 15,
                    color: CupertinoColors.systemGrey,
                    fontWeight: FontWeight.w400),
              ),
              header: const Text(
                "SINGLE SELECTION",
                style: TextStyle(
                    fontSize: 15,
                    color: CupertinoColors.systemGrey,
                    fontWeight: FontWeight.w400),
              ),
              dividerMargin: -10,
              children: const [
                CupertinoListTile(
                  title: Text(
                    "Off",
                    style: TextStyle(fontSize: 18),
                  ),
                  trailing: Icon(CupertinoIcons.check_mark),
                ),
                CupertinoListTile(
                    title: Text(
                  "Wi-Fi",
                  style: TextStyle(fontSize: 18),
                )),
                CupertinoListTile(
                    title: Text(
                  "Mobile Data",
                  style: TextStyle(
                      fontSize: 18, color: CupertinoColors.systemGrey2),
                )),
              ],
            ),
            CupertinoListSection.insetGrouped(
              footer: const Text(
                "Choose multiple item from a list of options",
                style: TextStyle(
                    fontSize: 15,
                    color: CupertinoColors.systemGrey,
                    fontWeight: FontWeight.w400),
              ),
              header: const Text(
                "MULTI SELECTION",
                style: TextStyle(
                    fontSize: 15,
                    color: CupertinoColors.systemGrey,
                    fontWeight: FontWeight.w400),
              ),
              dividerMargin: -10,
              children: const [
                CupertinoListTile(
                  title: Text(
                    "Option one",
                    style: TextStyle(color: CupertinoColors.systemGrey2),
                  ),
                  subtitle: Text("Disabled and selected"),
                  leading: Icon(CupertinoIcons.check_mark),
                ),
                CupertinoListTile(
                  title: Text("Option two"),
                  subtitle: Text("with subtitle!"),
                  leading: SizedBox(),
                ),
                CupertinoListTile(
                  title: Text("Option three"),
                  leading: Icon(CupertinoIcons.check_mark),
                ),
                CupertinoListTile(
                  title: Text("Option four"),
                  leading: SizedBox(),
                ),
                CupertinoListTile(
                  title: Text(
                    "Option five",
                    style: TextStyle(color: CupertinoColors.systemGrey2),
                  ),
                  subtitle: Text("Disabled and not selected"),
                  leading: SizedBox(),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
