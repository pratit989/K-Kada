// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customers_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<CustomersRecord> _$customersRecordSerializer =
    new _$CustomersRecordSerializer();

class _$CustomersRecordSerializer
    implements StructuredSerializer<CustomersRecord> {
  @override
  final Iterable<Type> types = const [CustomersRecord, _$CustomersRecord];
  @override
  final String wireName = 'CustomersRecord';

  @override
  Iterable<Object> serialize(Serializers serializers, CustomersRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.userRef;
    if (value != null) {
      result
        ..add('user_ref')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType(Object)])));
    }
    value = object.registrationCompleted;
    if (value != null) {
      result
        ..add('registration_completed')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.reference;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType(Object)])));
    }
    return result;
  }

  @override
  CustomersRecord deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CustomersRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'user_ref':
          result.userRef = serializers.deserialize(value,
                  specifiedType: const FullType(
                      DocumentReference, const [const FullType(Object)]))
              as DocumentReference<Object>;
          break;
        case 'registration_completed':
          result.registrationCompleted = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'Document__Reference__Field':
          result.reference = serializers.deserialize(value,
                  specifiedType: const FullType(
                      DocumentReference, const [const FullType(Object)]))
              as DocumentReference<Object>;
          break;
      }
    }

    return result.build();
  }
}

class _$CustomersRecord extends CustomersRecord {
  @override
  final DocumentReference<Object> userRef;
  @override
  final bool registrationCompleted;
  @override
  final DocumentReference<Object> reference;

  factory _$CustomersRecord([void Function(CustomersRecordBuilder) updates]) =>
      (new CustomersRecordBuilder()..update(updates)).build();

  _$CustomersRecord._(
      {this.userRef, this.registrationCompleted, this.reference})
      : super._();

  @override
  CustomersRecord rebuild(void Function(CustomersRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CustomersRecordBuilder toBuilder() =>
      new CustomersRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CustomersRecord &&
        userRef == other.userRef &&
        registrationCompleted == other.registrationCompleted &&
        reference == other.reference;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc(0, userRef.hashCode), registrationCompleted.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('CustomersRecord')
          ..add('userRef', userRef)
          ..add('registrationCompleted', registrationCompleted)
          ..add('reference', reference))
        .toString();
  }
}

class CustomersRecordBuilder
    implements Builder<CustomersRecord, CustomersRecordBuilder> {
  _$CustomersRecord _$v;

  DocumentReference<Object> _userRef;
  DocumentReference<Object> get userRef => _$this._userRef;
  set userRef(DocumentReference<Object> userRef) => _$this._userRef = userRef;

  bool _registrationCompleted;
  bool get registrationCompleted => _$this._registrationCompleted;
  set registrationCompleted(bool registrationCompleted) =>
      _$this._registrationCompleted = registrationCompleted;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  CustomersRecordBuilder() {
    CustomersRecord._initializeBuilder(this);
  }

  CustomersRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _userRef = $v.userRef;
      _registrationCompleted = $v.registrationCompleted;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CustomersRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CustomersRecord;
  }

  @override
  void update(void Function(CustomersRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$CustomersRecord build() {
    final _$result = _$v ??
        new _$CustomersRecord._(
            userRef: userRef,
            registrationCompleted: registrationCompleted,
            reference: reference);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
