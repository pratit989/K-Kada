import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'shops_record.g.dart';

abstract class ShopsRecord implements Built<ShopsRecord, ShopsRecordBuilder> {
  static Serializer<ShopsRecord> get serializer => _$shopsRecordSerializer;

  @nullable
  @BuiltValueField(wireName: 'vendor_ref')
  DocumentReference get vendorRef;

  @nullable
  @BuiltValueField(wireName: 'user_ref')
  DocumentReference get userRef;

  @nullable
  @BuiltValueField(wireName: 'shop_photo')
  String get shopPhoto;

  @nullable
  @BuiltValueField(wireName: 'shop_logo')
  String get shopLogo;

  @nullable
  @BuiltValueField(wireName: 'shop_name')
  String get shopName;

  @nullable
  @BuiltValueField(wireName: 'shop_category')
  String get shopCategory;

  @nullable
  String get address;

  @nullable
  String get state;

  @nullable
  String get city;

  @nullable
  String get pincode;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(ShopsRecordBuilder builder) => builder
    ..shopPhoto = ''
    ..shopLogo = ''
    ..shopName = ''
    ..shopCategory = ''
    ..address = ''
    ..state = ''
    ..city = ''
    ..pincode = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Shops');

  static Stream<ShopsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<ShopsRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  ShopsRecord._();
  factory ShopsRecord([void Function(ShopsRecordBuilder) updates]) =
      _$ShopsRecord;

  static ShopsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createShopsRecordData({
  DocumentReference vendorRef,
  DocumentReference userRef,
  String shopPhoto,
  String shopLogo,
  String shopName,
  String shopCategory,
  String address,
  String state,
  String city,
  String pincode,
}) =>
    serializers.toFirestore(
        ShopsRecord.serializer,
        ShopsRecord((s) => s
          ..vendorRef = vendorRef
          ..userRef = userRef
          ..shopPhoto = shopPhoto
          ..shopLogo = shopLogo
          ..shopName = shopName
          ..shopCategory = shopCategory
          ..address = address
          ..state = state
          ..city = city
          ..pincode = pincode));
