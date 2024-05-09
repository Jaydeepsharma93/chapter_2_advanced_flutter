# chapter_2_advanced_flutter

## 2.1 Date Picker, Time Picker, Dialog Box using Material & Cupertino

Android

<img src="https://github.com/Jaydeepsharma93/chapter_2_advanced_flutter/assets/143181361/fe825f1d-d75e-4d9a-a9d0-7803a95e9b09" width = 32%>
<img src="https://github.com/Jaydeepsharma93/chapter_2_advanced_flutter/assets/143181361/6cd23da8-4c09-487c-9cf2-df9e33116ad7" width = 32%>
<img src="https://github.com/Jaydeepsharma93/chapter_2_advanced_flutter/assets/143181361/e12669a3-b008-4b09-b38c-346f0bcc46e5" width = 32%>
<img src="https://github.com/Jaydeepsharma93/chapter_2_advanced_flutter/assets/143181361/d6a76fc6-7460-4264-a173-2c0f836edce8" width = 32%>
<img src="https://github.com/Jaydeepsharma93/chapter_2_advanced_flutter/assets/143181361/c6dc954f-77d6-48e7-ad4a-e54dc6e705a2" width = 32%>
<img src="https://github.com/Jaydeepsharma93/chapter_2_advanced_flutter/assets/143181361/39f2d054-8180-4710-ad89-a19bd95f0510" width = 32%>

Ios 


<img src="https://github.com/Jaydeepsharma93/chapter_2_advanced_flutter/assets/143181361/1e1e211a-9c0a-4b29-9c33-3a01bc21a537" width = 32%>
<img src="https://github.com/Jaydeepsharma93/chapter_2_advanced_flutter/assets/143181361/025b3147-90bd-4d41-85ce-2d0ba108b8fb" width = 32%>


## Date Picker:

  * A user interface element that allows users to choose a date.
  * It typically displays a calendar grid where users can tap on a specific day to select it.
  * Date pickers are commonly found in apps for booking appointments, scheduling events, or filtering data based on dates.

## Time Picker:
  * A temporary window that appears on top of the main app screen.
  * It often contains important information, requires user input, or presents a confirmation message.
  * Dialog boxes can have buttons for users to respond to the prompt, such as "OK," "Cancel," or other choices.
    
## Date Picker Cupertino (iOS):
  * A specific type of date picker designed to match the look and feel of Apple's iOS platform.
  * It offers a sleek, minimalist design with a calendar grid for selecting dates.
  * This is used by developers building apps specifically for iOS devices.
## Time Picker Cupertino (iOS):
 * Similar to the date picker, this is a time picker designed for iOS that follows the Cupertino (iOS) design language.
 * It might use rotary dials or a list for selecting hours and minutes.
 * This component is used in conjunction with the Cupertino date picker or independently for time selection within iOS apps.

## Action Sheet:
 * Another type of temporary window that appears from the bottom of the screen.
 * It typically displays a list of options for users to choose from.
 * Action sheets are often used for quick actions or providing alternative choices related to the current context in the app.


# 2.2 Cupertino Widgets
<img src="https://github.com/Jaydeepsharma93/chapter_2_advanced_flutter/assets/143181361/e07795eb-e751-4fe3-bbbe-bdbeb19e7593" width = 32%>
<img src="https://github.com/Jaydeepsharma93/chapter_2_advanced_flutter/assets/143181361/cbbbc641-31d7-49ea-b972-d348be84bcf8" width = 32%>
<img src="https://github.com/Jaydeepsharma93/chapter_2_advanced_flutter/assets/143181361/25224d8f-717b-488d-bc3e-8635c90812e7" width = 32%>
<img src="https://github.com/Jaydeepsharma93/chapter_2_advanced_flutter/assets/143181361/7efad15f-8c19-4c4c-a8fa-b1011aa3d424" width = 32%>
<img src="https://github.com/Jaydeepsharma93/chapter_2_advanced_flutter/assets/143181361/4e6fee08-5899-49f8-a50d-b2e8542dea74" width = 32%>
<dev><video src="https://github.com/Jaydeepsharma93/chapter_2_advanced_flutter/assets/143181361/35ce83bf-ee5f-4ab7-a355-e90e9b9eceb9" width = 32%></dev>

## What is the Platform Class in Flutter?
The Platform class, part of the dart:io library, is a utility that provides information about the environment in which your Flutter application is running. This includes details like:
  * Operating system (Android, iOS, macOS, Linux, Windows, Web)
  * Operating system version
  * Architecture (e.g., 32-bit, 64-bit)
  * Locale
  * Hostname
  * Number of processors

## Example of Using the Platform Class
Here's a code snippet demonstrating how to check the platform and display a message accordingly:

```dart
import 'package:flutter/material.dart';
import 'dart:io';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String message;
    if (Platform.isAndroid) {
      message = 'Running on Android!';
    } else if (Platform.isIOS) {
      message = 'Running on iOS!';
    } else {
      message = 'Running on a different platform.';
    }

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Platform Example'),
        ),
        body: Center(
          child: Text(message),
        ),
      ),
    );
  }
}
```

Let's break down the code:

1. We import the dart:io library to gain access to the Platform class.
2. We define a message variable that will store the text to be shown based on the platform.
3. We employ Platform.isAndroid and Platform.isIOS to identify the current platform.
4. We set the message variable depending on the platform.
5. We construct the Flutter app using MaterialApp and display the message within the Center widget.

# 2.3 CupertinoSliverNavigationBar  & CupertinoListTile

<img src="https://github.com/Jaydeepsharma93/chapter_2_advanced_flutter/assets/143181361/b09caa2d-350f-448c-88f2-524dc97a64b0" width = 32%>
<img src="https://github.com/Jaydeepsharma93/chapter_2_advanced_flutter/assets/143181361/b708bd1c-fc25-4de0-a16b-a8e70b0396b1" width = 32%>
<img src="https://github.com/Jaydeepsharma93/chapter_2_advanced_flutter/assets/143181361/f9355485-82f0-471a-a66b-ce4fa9f1cba4" width = 32%>
<dev><video src="https://github.com/Jaydeepsharma93/chapter_2_advanced_flutter/assets/143181361/9568c3f3-7998-4d4a-9b1a-9cb75c1f8451" width = 32%></dev>

