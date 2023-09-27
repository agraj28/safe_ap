import 'package:location/location.dart';

Future<PermissionStatus> requestLocationPermission() async {
  var location = Location();
  PermissionStatus _permissionGranted;

  await location.serviceEnabled();
  await location.requestService();

  _permissionGranted = await location.hasPermission();

  if (_permissionGranted == PermissionStatus.granted ||
      _permissionGranted == PermissionStatus.grantedLimited) {
    return _permissionGranted;
  } else {
    _permissionGranted = await location.requestPermission();

    if (_permissionGranted == PermissionStatus.granted ||
        _permissionGranted == PermissionStatus.grantedLimited) {
      return _permissionGranted;
    } else {
      return _permissionGranted;
    }
  }
}

Future<bool> locationPermissionStatus() async {
  var location = Location();
  var _locationStatus = await location.hasPermission();
  return (_locationStatus == PermissionStatus.granted) ||
      (_locationStatus == PermissionStatus.grantedLimited);
}
