import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'customers_record.g.dart';

abstract class CustomersRecord
    implements Built<CustomersRecord, CustomersRecordBuilder> {
  static Serializer<CustomersRecord> get serializer =>
      _$customersRecordSerializer;

  @BuiltValueField(wireName: 'user_ref')
  DocumentReference? get userRef;

  @BuiltValueField(wireName: 'registration_completed')
  bool? get registrationCompleted;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(CustomersRecordBuilder builder) =>
      builder..registrationCompleted = false;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Customers');

  static Stream<CustomersRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<CustomersRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  CustomersRecord._();
  factory CustomersRecord([void Function(CustomersRecordBuilder) updates]) =
      _$CustomersRecord;

  static CustomersRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createCustomersRecordData({
  DocumentReference? userRef,
  bool? registrationCompleted,
}) {
  final firestoreData = serializers.toFirestore(
    CustomersRecord.serializer,
    CustomersRecord(
      (c) => c
        ..userRef = userRef
        ..registrationCompleted = registrationCompleted,
    ),
  );

  return firestoreData;
}
