import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/lat_lng.dart';

class FFAppState {
  static final FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal() {
    initializePersistedState();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _userType = prefs.getString('ff_userType') ?? _userType;
  }

  SharedPreferences prefs;

  String _userType = '';
  String get userType => _userType;
  set userType(String _value) {
    _userType = _value;
    prefs.setString('ff_userType', _value);
  }

  bool uploadedShopPhoto = false;

  bool uploadedShopLogo = false;

  bool aadharUpload = false;

  bool panCardUpload = false;

  bool fssaiCertificateUpload = false;
}

LatLng _latLngFromString(String val) {
  if (val == null) {
    return null;
  }
  final split = val.split(',');
  final lat = double.parse(split.first);
  final lng = double.parse(split.last);
  return LatLng(lat, lng);
}
