import 'package:flutter/material.dart';
import 'backend/backend.dart';
import 'backend/api_requests/api_manager.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static final FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _userType = prefs.getString('ff_userType') ?? _userType;
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  String _userType = '';
  String get userType => _userType;
  set userType(String _value) {
    _userType = _value;
    prefs.setString('ff_userType', _value);
  }

  bool _uploadedShopPhoto = false;
  bool get uploadedShopPhoto => _uploadedShopPhoto;
  set uploadedShopPhoto(bool _value) {
    _uploadedShopPhoto = _value;
  }

  bool _uploadedShopLogo = false;
  bool get uploadedShopLogo => _uploadedShopLogo;
  set uploadedShopLogo(bool _value) {
    _uploadedShopLogo = _value;
  }

  bool _aadharUpload = false;
  bool get aadharUpload => _aadharUpload;
  set aadharUpload(bool _value) {
    _aadharUpload = _value;
  }

  bool _panCardUpload = false;
  bool get panCardUpload => _panCardUpload;
  set panCardUpload(bool _value) {
    _panCardUpload = _value;
  }

  bool _fssaiCertificateUpload = false;
  bool get fssaiCertificateUpload => _fssaiCertificateUpload;
  set fssaiCertificateUpload(bool _value) {
    _fssaiCertificateUpload = _value;
  }

  List<String> _productImages = [];
  List<String> get productImages => _productImages;
  set productImages(List<String> _value) {
    _productImages = _value;
  }

  void addToProductImages(String _value) {
    _productImages.add(_value);
  }

  void removeFromProductImages(String _value) {
    _productImages.remove(_value);
  }

  void removeAtIndexFromProductImages(int _index) {
    _productImages.removeAt(_index);
  }

  String _productName = '';
  String get productName => _productName;
  set productName(String _value) {
    _productName = _value;
  }

  List<String> _variantNames = [];
  List<String> get variantNames => _variantNames;
  set variantNames(List<String> _value) {
    _variantNames = _value;
  }

  void addToVariantNames(String _value) {
    _variantNames.add(_value);
  }

  void removeFromVariantNames(String _value) {
    _variantNames.remove(_value);
  }

  void removeAtIndexFromVariantNames(int _index) {
    _variantNames.removeAt(_index);
  }

  List<int> _variantPrices = [];
  List<int> get variantPrices => _variantPrices;
  set variantPrices(List<int> _value) {
    _variantPrices = _value;
  }

  void addToVariantPrices(int _value) {
    _variantPrices.add(_value);
  }

  void removeFromVariantPrices(int _value) {
    _variantPrices.remove(_value);
  }

  void removeAtIndexFromVariantPrices(int _index) {
    _variantPrices.removeAt(_index);
  }

  bool _addedProductName = false;
  bool get addedProductName => _addedProductName;
  set addedProductName(bool _value) {
    _addedProductName = _value;
  }

  bool _addedProductVaraint = false;
  bool get addedProductVaraint => _addedProductVaraint;
  set addedProductVaraint(bool _value) {
    _addedProductVaraint = _value;
  }

  List<String> _selectedColours = [];
  List<String> get selectedColours => _selectedColours;
  set selectedColours(List<String> _value) {
    _selectedColours = _value;
  }

  void addToSelectedColours(String _value) {
    _selectedColours.add(_value);
  }

  void removeFromSelectedColours(String _value) {
    _selectedColours.remove(_value);
  }

  void removeAtIndexFromSelectedColours(int _index) {
    _selectedColours.removeAt(_index);
  }

  bool _addedColours = false;
  bool get addedColours => _addedColours;
  set addedColours(bool _value) {
    _addedColours = _value;
  }

  bool _addedDescription = false;
  bool get addedDescription => _addedDescription;
  set addedDescription(bool _value) {
    _addedDescription = _value;
  }

  String _description = '';
  String get description => _description;
  set description(String _value) {
    _description = _value;
  }

  bool _addedStockDetails = false;
  bool get addedStockDetails => _addedStockDetails;
  set addedStockDetails(bool _value) {
    _addedStockDetails = _value;
  }

  String _stockDetails = '';
  String get stockDetails => _stockDetails;
  set stockDetails(String _value) {
    _stockDetails = _value;
  }

  bool _addedSize = false;
  bool get addedSize => _addedSize;
  set addedSize(bool _value) {
    _addedSize = _value;
  }
}

LatLng? _latLngFromString(String? val) {
  if (val == null) {
    return null;
  }
  final split = val.split(',');
  final lat = double.parse(split.first);
  final lng = double.parse(split.last);
  return LatLng(lat, lng);
}
