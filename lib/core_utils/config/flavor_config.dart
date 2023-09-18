import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';


enum Flavor { patient, practitioner, web_app }

enum SubFlavor { qa, stage, prod }

extension FlavorTextValues on SubFlavor{
  String toText(){
    switch(this){
      case SubFlavor.prod:
        return 'prod';
      case SubFlavor.stage:
        return 'stage';
      default:
        return 'qa';
    }
  }
}

extension FlavorValueFromText on String{
  Flavor toFlavor(){
    switch(this){

      case 'Patient':
        return Flavor.patient;
      case 'Practioner':
        return Flavor.practitioner;
      default:
        return Flavor.web_app;
    }
  }
}



extension SubFlavorTextValues on Flavor{
  String toText(){
    switch(this){
      case Flavor.patient:
        return 'Patient';
      case Flavor.practitioner:
        return 'Practioner';
      default:
        return 'WebApp';
    }
  }
}

extension SubFlavorValueFromText on String{
  SubFlavor toFlavor(){
    switch(this){

      case 'prod':
        return SubFlavor.prod;
      case 'stage':
        return SubFlavor.stage;
      default:
        return SubFlavor.qa;
    }
  }
}



class FlavorValues {
  FlavorValues();
}

class FlavorConfig {


  /// Make sure to set this variable = false before release the build to production
  static bool enableChangeEnvironmentForTesting = false;
  static bool enableTheEndpointsLogger = false;


  final Flavor flavor;
  final String name;
  final Color color;
  final FlavorValues flavorValues;
  final SubFlavor subFlavor;
  final bool isDebug = kDebugMode;

  static FlavorConfig? _instance;

  factory FlavorConfig(
      {required Flavor flavor,
      required FlavorValues values,
      Color color = Colors.blue,
      required SubFlavor subFlavor}) {

    _instance ??= FlavorConfig._internal(
        flavor, _enumName(flavor.toString()), color, values,subFlavor);
    return _instance!;
  }

  static String _enumName(String enumToString) {
    var paths = enumToString.split('.');
    return paths[paths.length - 1];
  }

  FlavorConfig._internal(this.flavor, this.name, this.color, this.flavorValues,this.subFlavor);

  static FlavorConfig get instance => _instance!;
  static  void clear()  => _instance = null;

  static bool isPatient() => _instance!.flavor == Flavor.patient;

  static bool isPractioner() => _instance!.flavor == Flavor.practitioner;

  static bool isWebApp() => _instance!.flavor == Flavor.web_app;

  static bool isProd() => _instance!.subFlavor == SubFlavor.prod;

  static bool isStage() => _instance!.subFlavor == SubFlavor.stage;

  static bool isQA() => _instance!.subFlavor ==  SubFlavor.qa;

  FlavorValues get values => flavorValues;

}
