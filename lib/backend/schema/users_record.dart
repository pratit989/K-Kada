import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'users_record.g.dart';

abstract class UsersRecord implements Built<UsersRecord, UsersRecordBuilder> {
  static Serializer<UsersRecord> get serializer => _$usersRecordSerializer;

  @nullable
  String get email;

  @nullable
  @BuiltValueField(wireName: 'display_name')
  String get displayName;

  @nullable
  @BuiltValueField(wireName: 'photo_url')
  String get photoUrl;

  @nullable
  String get uid;

  @nullable
  @BuiltValueField(wireName: 'created_time')
  DateTime get createdTime;

  @nullable
  @BuiltValueField(wireName: 'phone_number')
  String get phoneNumber;

  @nullable
  bool get transporterRegistered;

  @nullable
  bool get vendorRegistered;

  @nullable
  bool get customerRegistered;

  @nullable
  @BuiltValueField(wireName: 'date_of_birth')
  DateTime get dateOfBirth;

  @nullable
  @BuiltValueField(wireName: 'vendor_ref')
  DocumentReference get vendorRef;

  @nullable
  @BuiltValueField(wireName: 'transporter_ref')
  DocumentReference get transporterRef;

  @nullable
  @BuiltValueField(wireName: 'customer_ref')
  DocumentReference get customerRef;

  @nullable
  String get signature;

  @nullable
  @BuiltValueField(wireName: 'verification_requested')
  bool get verificationRequested;

  @nullable
  @BuiltValueField(wireName: 'kyc_completed')
  bool get kycCompleted;

  @nullable
  bool get verified;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(UsersRecordBuilder builder) => builder
    ..email = ''
    ..displayName = ''
    ..photoUrl = ''
    ..uid = ''
    ..phoneNumber = ''
    ..transporterRegistered = false
    ..vendorRegistered = false
    ..customerRegistered = false
    ..signature = ''
    ..verificationRequested = false
    ..kycCompleted = false
    ..verified = false;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Users');

  static Stream<UsersRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<UsersRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  UsersRecord._();
  factory UsersRecord([void Function(UsersRecordBuilder) updates]) =
      _$UsersRecord;

  static UsersRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createUsersRecordData({
  String email,
  String displayName,
  String photoUrl,
  String uid,
  DateTime createdTime,
  String phoneNumber,
  bool transporterRegistered,
  bool vendorRegistered,
  bool customerRegistered,
  DateTime dateOfBirth,
  DocumentReference vendorRef,
  DocumentReference transporterRef,
  DocumentReference customerRef,
  String signature,
  bool verificationRequested,
  bool kycCompleted,
  bool verified,
}) =>
    serializers.toFirestore(
        UsersRecord.serializer,
        UsersRecord((u) => u
          ..email = email
          ..displayName = displayName
          ..photoUrl = photoUrl
          ..uid = uid
          ..createdTime = createdTime
          ..phoneNumber = phoneNumber
          ..transporterRegistered = transporterRegistered
          ..vendorRegistered = vendorRegistered
          ..customerRegistered = customerRegistered
          ..dateOfBirth = dateOfBirth
          ..vendorRef = vendorRef
          ..transporterRef = transporterRef
          ..customerRef = customerRef
          ..signature = signature
          ..verificationRequested = verificationRequested
          ..kycCompleted = kycCompleted
          ..verified = verified));
