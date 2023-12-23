import 'package:flutter/material.dart';

enum Season { spring, summer, autumn, winter }

enum childDiseases { yes, no }

enum accidentOrTrauma { yes, no }

enum surgicalIntervention { yes, no }

enum hightFeverInLastYear { less3month, more3month, no }

enum alcoholConsumption {
  severalAday,

  everyday,

  severalAweek,

  oncesAweek,

  hardlyEver,
  never
}

enum smokingHabit { never, occasional, daily }

class MyData with ChangeNotifier {
  List<double> _myGlobalVariable = [];

  String _result = "";

  String get result => _result;

  List<String> _rawData = [];

  List<String> get rawData => _rawData;

  List<double> get myGlobalVariable => _myGlobalVariable;

  void updateGlobalVariable(List<double> newValue) {
    _myGlobalVariable = newValue;
    notifyListeners();
  }

  void updateResult(String newValue) {
    _result = newValue;
    notifyListeners();
  }

  void updateRawData(List<String> newValue) {
    _rawData = newValue;
    notifyListeners();
  }

  Season? season = Season.spring;
  Season? get myEnumValue => season;

  void updateEnumValue(Season newValue) {
    season = newValue;
    notifyListeners();
  }

  childDiseases? cdi = childDiseases.no;
  childDiseases? get cdiValue => cdi;

  void updateCdivalue(childDiseases newValue) {
    cdi = newValue;
    notifyListeners();
  }

  accidentOrTrauma? aot = accidentOrTrauma.no;
  accidentOrTrauma? get myaotValue => aot;

  void updateAotValue(accidentOrTrauma newValue) {
    aot = newValue;
    notifyListeners();
  }

  surgicalIntervention? si = surgicalIntervention.no;
  surgicalIntervention? get mysiValue => si;

  void updatesiValue(surgicalIntervention nsialue) {
    si = nsialue;
    notifyListeners();
  }

  hightFeverInLastYear? hfily = hightFeverInLastYear.no;
  hightFeverInLastYear? get myhfilyValue => hfily;

  void updatehfilyValue(hightFeverInLastYear newValue) {
    hfily = newValue;
    notifyListeners();
  }

  alcoholConsumption? alcon = alcoholConsumption.severalAday;
  alcoholConsumption? get myalconValue => alcon;

  void updateAlconValue(alcoholConsumption newValue) {
    alcon = newValue;
    notifyListeners();
  }

  smokingHabit? smk = smokingHabit.never;
  smokingHabit? get mysmkValue => smk;

  void updateSmkValue(smokingHabit newValue) {
    smk = newValue;
    notifyListeners();
  }
}
