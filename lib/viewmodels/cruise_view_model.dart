import 'package:flutter/foundation.dart';
import '../models/cruise.dart';

class CruiseViewModel extends ChangeNotifier {
  final cruise = const Cruise(
    'Rajang River Cruise',
    'Sibu, Sarawak, Malaysia',
    'Discover the heart of Sarawak from the water. Enjoy riverside scenery, local heritage, and a relaxing journey along the Rajang River.',
    [
      'Private River Cruise',
      'Sunset Cruise',
      'Sunrise Cruise',
      'Rural Cruise',
      'SMI Park Cruise',
    ],
  );
  DateTime? visitDate;
  String selectedPackage = 'Sunset Cruise';
  bool darkMode = false;
  bool starred = false;
  int starCount = 41;

  void chooseDate(DateTime date) {
    visitDate = date;
    notifyListeners();
  }

  void choosePackage(String value) {
    selectedPackage = value;
    notifyListeners();
  }

  void toggleTheme(bool value) {
    darkMode = value;
    notifyListeners();
  }

  void toggleStar() {
    starred = !starred;
    starCount += starred ? 1 : -1;
    notifyListeners();
  }
}
