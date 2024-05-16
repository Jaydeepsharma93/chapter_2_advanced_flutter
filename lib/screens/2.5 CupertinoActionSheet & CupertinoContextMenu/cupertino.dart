import 'package:flutter/cupertino.dart';

class CupertinoWidget extends StatelessWidget {
  const CupertinoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      debugShowCheckedModeBanner: false,
      home: CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(),
        child: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.asset(
                      'assets/img/a.jpg',
                      height: 145,
                    ),
                    Image.asset(
                      'assets/img/b.jpg',
                      height: 145,
                    ),
                    Image.asset(
                      'assets/img/c.jpg',
                      height: 145,
                    )
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset(
                    'assets/img/d.jpg',
                    height: 145,
                  ),
                  Image.asset(
                    'assets/img/e.jpg',
                    height: 145,
                  ),
                  CupertinoContextMenu(
                    child: Image.asset(
                      'assets/img/f.jpg',
                      height: 145,
                    ),
                    actions: [
                      CupertinoContextMenuAction(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Copy'),
                            Icon(CupertinoIcons.crop),
                          ],
                        ),
                        onPressed: () {},
                      ),
                      CupertinoContextMenuAction(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Share'),
                            Icon(CupertinoIcons.share),
                          ],
                        ),
                        onPressed: () {},
                      ),
                      CupertinoContextMenuAction(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Favorite'),
                            Icon(CupertinoIcons.heart),
                          ],
                        ),
                        onPressed: () {},
                      ),
                      CupertinoContextMenuAction(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Show in All Photos'),
                            Icon(CupertinoIcons.square_on_square),
                          ],
                        ),
                        onPressed: () {},
                      ),
                      CupertinoContextMenuAction(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Remove',style: TextStyle(
                              color: CupertinoColors.destructiveRed
                            ),),
                            Icon(CupertinoIcons.delete,color: CupertinoColors.destructiveRed,),
                          ],
                        ),
                        onPressed: () {},
                      )
                    ],
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: CupertinoButton(
                  child: Icon(
                    CupertinoIcons.shift_fill,
                    size: 30,
                  ),
                  onPressed: () {
                    showCupertinoModalPopup(
                      context: context,
                      builder: (context) => CupertinoActionSheet(
                        title: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Title',
                              style: TextStyle(fontSize: 20),
                            ),
                            Text(
                              'Message',
                              style: TextStyle(fontSize: 20),
                            )
                          ],
                        ),
                        actions: [
                          CupertinoActionSheetAction(
                              onPressed: () {},
                              child: Text(
                                'Default Action',
                                style: TextStyle(
                                    fontSize: 22,
                                    fontWeight: FontWeight.w600,
                                    letterSpacing: 1),
                              )),
                          CupertinoActionSheetAction(
                              onPressed: () {},
                              child: Text(
                                'Normal Action',
                                style: TextStyle(
                                    fontSize: 22, fontWeight: FontWeight.w400),
                              )),
                          CupertinoActionSheetAction(
                              onPressed: () {},
                              child: Text(
                                'Destructive Action',
                                style: TextStyle(
                                    color: CupertinoColors.destructiveRed,
                                    fontSize: 22,
                                    fontWeight: FontWeight.w400),
                              ))
                        ],
                        cancelButton: CupertinoActionSheetAction(
                          onPressed: () {},
                          child: Text('Cancal'),
                        ),
                      ),
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
