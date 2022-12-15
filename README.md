<!--
This README describes the package. If you publish this package to pub.dev,
this README's contents appear on the landing page for your package.

For information about how to write a good package README, see the guide for
[writing package pages](https://dart.dev/guides/libraries/writing-package-pages).

For general information about developing packages, see the Dart guide for
[creating packages](https://dart.dev/guides/libraries/create-library-packages)
and the Flutter guide for
[developing packages and plugins](https://flutter.dev/developing-packages).
-->

Common UI Utility plugins used by Flutter devs on a daily basis


## Features
* Toast
* AlertDialogue
* Loader

## Getting started


## Usage

To show a toast message, use the following code:
```dart
UIUtils.showToast("Hello dear");
```

To show a loader, use the following code:
```dart
UIUtils.showCircularLoader("Loading...");
```

To show an alert dialogue, use the following code:
```dart
UIUtils.showAlertDialogue(context, "Title here", "Here is the description");
```

To show simple spinner loader with no message, use the following code:
```dart
UIUtils.showSimpleLoader();
```

## Maintainers
Name: Ilo Calistus
Email: icalistus@gmail.com