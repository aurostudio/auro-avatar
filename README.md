# Avatar with name initials generated

[![Build Status](https://travis-ci.org/aurostudio/auro-avatar.svg?branch=master)](https://travis-ci.org/aurostudio/auro-avatar)
[![pub package](https://img.shields.io/pub/v/auro_avatar.svg)](https://pub.dartlang.org/packages/auro_avatar)

A flutter plugin to generate an avatar with name initials from a full-name string.

## How to import

Add this to your package's pubspec.yaml file:
```
dependencies:
  auro_avatar: "^0.1.0"

```
Add it to your dart file:
```
import 'package:auro_avatar/auro_avatar.dart';
```
## Usage
The auro_avatar can be used directly as:

#### InitialNameAvatar - Circle avatar

```
new InitialNameAvatar(
    'John Doe',
    circleAvatar: true,
    borderColor: Colors.grey,
    borderSize: 4.0,
    backgroundColor: Colors.blue,
    foregroundColor: Colors.white,
    padding: 20.0,
    textSize: 30.0,
),
 ```

#### InitialNameAvatar - Square avatar

```
new InitialNameAvatar(
    'John Doe',
    circleAvatar: false,
    ...
),
 ```
