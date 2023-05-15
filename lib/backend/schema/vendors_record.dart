import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'vendors_record.g.dart';

abstract class VendorsRecord
    implements Built<VendorsRecord, VendorsRecordBuilder> {
  static Serializer<VendorsRecord> get serializer => _$vendorsRecordSerializer;

  @BuiltValueField(wireName: 'user_ref')
  DocumentReference? get userRef;

  @BuiltValueField(wireName: 'registration_completed')
  bool? get registrationCompleted;

  @BuiltValueField(wireName: 'shop_ref')
  DocumentReference? get shopRef;

  @BuiltValueField(wireName: 'gst_number')
  String? get gstNumber;

  @BuiltValueField(wireName: 'pan_number')
  String? get panNumber;

  @BuiltValueField(wireName: 'aadhar_img')
  String? get aadharImg;

  @BuiltValueField(wireName: 'pan_img')
  String? get panImg;

  @BuiltValueField(wireName: 'fssai_img')
  String? get fssaiImg;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(VendorsRecordBuilder builder) => builder
    ..registrationCompleted = false
    ..gstNumber = ''
    ..panNumber = ''
    ..aadharImg = ''
    ..panImg = ''
    ..fssaiImg = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Vendors');

  static Stream<VendorsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<VendorsRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  VendorsRecord._();
  factory VendorsRecord([void Function(VendorsRecordBuilder) updates]) =
      _$VendorsRecord;

  static VendorsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createVendorsRecordData({
  DocumentReference? userRef,
  bool? registrationCompleted,
  DocumentReference? shopRef,
  String? gstNumber,
  String? panNumber,
  String? aadharImg,
  String? panImg,
  String? fssaiImg,
}) {
  final firestoreData = serializers.toFirestore(
    VendorsRecord.serializer,
    VendorsRecord(
      (v) => v
        ..userRef = userRef
        ..registrationCompleted = registrationCompleted
        ..shopRef = shopRef
        ..gstNumber = gstNumber
        ..panNumber = panNumber
        ..aadharImg = aadharImg
        ..panImg = panImg
        ..fssaiImg = fssaiImg,
    ),
  );

  return firestoreData;
}
