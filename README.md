# Rajang River Cruise - Lab 03

Flutter MVVM app for a Rajang River cruise details and booking screen.

## Run

```powershell
flutter pub get
flutter run
```

Choose an Android emulator/device or a browser when prompted.

## Project structure

```text
lib/
  main.dart
  models/cruise.dart
  viewmodels/cruise_view_model.dart
  views/cruise_screen.dart
  widgets/
    image_section.dart
    title_section.dart
    button_section.dart
    text_section.dart
    preference_section.dart
```

The model stores cruise data. The `ChangeNotifier` view model owns the selected visit date, package, theme, and star state. The view and modular widgets render those values and call view model methods. Portrait uses one scrolling column. Landscape uses a `Row` with `Expanded` image and details panes.

## Verification

```powershell
flutter analyze
flutter test
```

## Reflection

The main challenge was keeping the screen usable in both orientations without duplicating its controls. A shared details section is placed in a portrait `ListView` or in the right hand landscape `ListView`. Another challenge was keeping theme and star changes visible immediately; the app listens to the same `CruiseViewModel` at the app and screen levels.

## Android Studio evidence

The app was built and run on the Pixel 5 API 34 emulator in Android Studio. Genuine Android screenshots and the four-page submission PDF are in `submission/`. The PDF shows the MVVM project structure, portrait layout, landscape split view, open date picker, star count before and after a tap, dark theme, and a short reflection.

Public source repository: https://github.com/peigiii/rajang-river-cruise-lab03
The header includes a local photograph of the Rajang River in Sibu by [Cerevisae](https://commons.wikimedia.org/wiki/File:Sibu_Rajang_river_view_from_Tua_Pek_Kong_temple.jpg), licensed under [CC BY-SA 4.0](https://creativecommons.org/licenses/by-sa/4.0/). It is displayed with a fitted crop in the app.

