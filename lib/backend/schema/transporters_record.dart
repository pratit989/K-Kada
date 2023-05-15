import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'transporters_record.g.dart';

abstract class TransportersRecord
    implements Built<TransportersRecord, TransportersRecordBuilder> {
  static Serializer<TransportersRecord> get serializer =>
      _$transportersRecordSerializer;

  @BuiltValueField(wireName: 'user_ref')
  DocumentReference? get userRef;

  @BuiltValueField(wireName: 'registration_completed')
  bool? get registrationCompleted;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(TransportersRecordBuilder builder) =>
      builder..registrationCompleted = false;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Transporters');

  static Stream<TransportersRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<TransportersRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  TransportersRecord._();
  factory TransportersRecord(
          [void Function(TransportersRecordBuilder) updates]) =
      _$TransportersRecord;

  static TransportersRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createTransportersRecordData({
  DocumentReference? userRef,
  bool? registrationCompleted,
}) {
  final firestoreData = serializers.toFirestore(
    TransportersRecord.serializer,
    TransportersRecord(
      (t) => t
        ..userRef = userRef
        ..registrationCompleted = registrationCompleted,
    ),
  );

  return firestoreData;
}
