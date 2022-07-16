// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'users_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<UsersRecord> _$usersRecordSerializer = new _$UsersRecordSerializer();

class _$UsersRecordSerializer implements StructuredSerializer<UsersRecord> {
  @override
  final Iterable<Type> types = const [UsersRecord, _$UsersRecord];
  @override
  final String wireName = 'UsersRecord';

  @override
  Iterable<Object> serialize(Serializers serializers, UsersRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.email;
    if (value != null) {
      result
        ..add('email')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.displayName;
    if (value != null) {
      result
        ..add('display_name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.photoUrl;
    if (value != null) {
      result
        ..add('photo_url')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.uid;
    if (value != null) {
      result
        ..add('uid')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.createdTime;
    if (value != null) {
      result
        ..add('created_time')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.phoneNumber;
    if (value != null) {
      result
        ..add('phone_number')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.transporterRegistered;
    if (value != null) {
      result
        ..add('transporterRegistered')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.vendorRegistered;
    if (value != null) {
      result
        ..add('vendorRegistered')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.customerRegistered;
    if (value != null) {
      result
        ..add('customerRegistered')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.dateOfBirth;
    if (value != null) {
      result
        ..add('date_of_birth')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.vendorRef;
    if (value != null) {
      result
        ..add('vendor_ref')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType(Object)])));
    }
    value = object.transporterRef;
    if (value != null) {
      result
        ..add('transporter_ref')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType(Object)])));
    }
    value = object.customerRef;
    if (value != null) {
      result
        ..add('customer_ref')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType(Object)])));
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
  UsersRecord deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new UsersRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'display_name':
          result.displayName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'photo_url':
          result.photoUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'uid':
          result.uid = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'created_time':
          result.createdTime = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'phone_number':
          result.phoneNumber = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'transporterRegistered':
          result.transporterRegistered = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'vendorRegistered':
          result.vendorRegistered = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'customerRegistered':
          result.customerRegistered = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'date_of_birth':
          result.dateOfBirth = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'vendor_ref':
          result.vendorRef = serializers.deserialize(value,
                  specifiedType: const FullType(
                      DocumentReference, const [const FullType(Object)]))
              as DocumentReference<Object>;
          break;
        case 'transporter_ref':
          result.transporterRef = serializers.deserialize(value,
                  specifiedType: const FullType(
                      DocumentReference, const [const FullType(Object)]))
              as DocumentReference<Object>;
          break;
        case 'customer_ref':
          result.customerRef = serializers.deserialize(value,
                  specifiedType: const FullType(
                      DocumentReference, const [const FullType(Object)]))
              as DocumentReference<Object>;
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

class _$UsersRecord extends UsersRecord {
  @override
  final String email;
  @override
  final String displayName;
  @override
  final String photoUrl;
  @override
  final String uid;
  @override
  final DateTime createdTime;
  @override
  final String phoneNumber;
  @override
  final bool transporterRegistered;
  @override
  final bool vendorRegistered;
  @override
  final bool customerRegistered;
  @override
  final DateTime dateOfBirth;
  @override
  final DocumentReference<Object> vendorRef;
  @override
  final DocumentReference<Object> transporterRef;
  @override
  final DocumentReference<Object> customerRef;
  @override
  final DocumentReference<Object> reference;

  factory _$UsersRecord([void Function(UsersRecordBuilder) updates]) =>
      (new UsersRecordBuilder()..update(updates)).build();

  _$UsersRecord._(
      {this.email,
      this.displayName,
      this.photoUrl,
      this.uid,
      this.createdTime,
      this.phoneNumber,
      this.transporterRegistered,
      this.vendorRegistered,
      this.customerRegistered,
      this.dateOfBirth,
      this.vendorRef,
      this.transporterRef,
      this.customerRef,
      this.reference})
      : super._();

  @override
  UsersRecord rebuild(void Function(UsersRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UsersRecordBuilder toBuilder() => new UsersRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UsersRecord &&
        email == other.email &&
        displayName == other.displayName &&
        photoUrl == other.photoUrl &&
        uid == other.uid &&
        createdTime == other.createdTime &&
        phoneNumber == other.phoneNumber &&
        transporterRegistered == other.transporterRegistered &&
        vendorRegistered == other.vendorRegistered &&
        customerRegistered == other.customerRegistered &&
        dateOfBirth == other.dateOfBirth &&
        vendorRef == other.vendorRef &&
        transporterRef == other.transporterRef &&
        customerRef == other.customerRef &&
        reference == other.reference;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc(
                                        $jc(
                                            $jc(
                                                $jc(
                                                    $jc($jc(0, email.hashCode),
                                                        displayName.hashCode),
                                                    photoUrl.hashCode),
                                                uid.hashCode),
                                            createdTime.hashCode),
                                        phoneNumber.hashCode),
                                    transporterRegistered.hashCode),
                                vendorRegistered.hashCode),
                            customerRegistered.hashCode),
                        dateOfBirth.hashCode),
                    vendorRef.hashCode),
                transporterRef.hashCode),
            customerRef.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('UsersRecord')
          ..add('email', email)
          ..add('displayName', displayName)
          ..add('photoUrl', photoUrl)
          ..add('uid', uid)
          ..add('createdTime', createdTime)
          ..add('phoneNumber', phoneNumber)
          ..add('transporterRegistered', transporterRegistered)
          ..add('vendorRegistered', vendorRegistered)
          ..add('customerRegistered', customerRegistered)
          ..add('dateOfBirth', dateOfBirth)
          ..add('vendorRef', vendorRef)
          ..add('transporterRef', transporterRef)
          ..add('customerRef', customerRef)
          ..add('reference', reference))
        .toString();
  }
}

class UsersRecordBuilder implements Builder<UsersRecord, UsersRecordBuilder> {
  _$UsersRecord _$v;

  String _email;
  String get email => _$this._email;
  set email(String email) => _$this._email = email;

  String _displayName;
  String get displayName => _$this._displayName;
  set displayName(String displayName) => _$this._displayName = displayName;

  String _photoUrl;
  String get photoUrl => _$this._photoUrl;
  set photoUrl(String photoUrl) => _$this._photoUrl = photoUrl;

  String _uid;
  String get uid => _$this._uid;
  set uid(String uid) => _$this._uid = uid;

  DateTime _createdTime;
  DateTime get createdTime => _$this._createdTime;
  set createdTime(DateTime createdTime) => _$this._createdTime = createdTime;

  String _phoneNumber;
  String get phoneNumber => _$this._phoneNumber;
  set phoneNumber(String phoneNumber) => _$this._phoneNumber = phoneNumber;

  bool _transporterRegistered;
  bool get transporterRegistered => _$this._transporterRegistered;
  set transporterRegistered(bool transporterRegistered) =>
      _$this._transporterRegistered = transporterRegistered;

  bool _vendorRegistered;
  bool get vendorRegistered => _$this._vendorRegistered;
  set vendorRegistered(bool vendorRegistered) =>
      _$this._vendorRegistered = vendorRegistered;

  bool _customerRegistered;
  bool get customerRegistered => _$this._customerRegistered;
  set customerRegistered(bool customerRegistered) =>
      _$this._customerRegistered = customerRegistered;

  DateTime _dateOfBirth;
  DateTime get dateOfBirth => _$this._dateOfBirth;
  set dateOfBirth(DateTime dateOfBirth) => _$this._dateOfBirth = dateOfBirth;

  DocumentReference<Object> _vendorRef;
  DocumentReference<Object> get vendorRef => _$this._vendorRef;
  set vendorRef(DocumentReference<Object> vendorRef) =>
      _$this._vendorRef = vendorRef;

  DocumentReference<Object> _transporterRef;
  DocumentReference<Object> get transporterRef => _$this._transporterRef;
  set transporterRef(DocumentReference<Object> transporterRef) =>
      _$this._transporterRef = transporterRef;

  DocumentReference<Object> _customerRef;
  DocumentReference<Object> get customerRef => _$this._customerRef;
  set customerRef(DocumentReference<Object> customerRef) =>
      _$this._customerRef = customerRef;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  UsersRecordBuilder() {
    UsersRecord._initializeBuilder(this);
  }

  UsersRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _email = $v.email;
      _displayName = $v.displayName;
      _photoUrl = $v.photoUrl;
      _uid = $v.uid;
      _createdTime = $v.createdTime;
      _phoneNumber = $v.phoneNumber;
      _transporterRegistered = $v.transporterRegistered;
      _vendorRegistered = $v.vendorRegistered;
      _customerRegistered = $v.customerRegistered;
      _dateOfBirth = $v.dateOfBirth;
      _vendorRef = $v.vendorRef;
      _transporterRef = $v.transporterRef;
      _customerRef = $v.customerRef;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UsersRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UsersRecord;
  }

  @override
  void update(void Function(UsersRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$UsersRecord build() {
    final _$result = _$v ??
        new _$UsersRecord._(
            email: email,
            displayName: displayName,
            photoUrl: photoUrl,
            uid: uid,
            createdTime: createdTime,
            phoneNumber: phoneNumber,
            transporterRegistered: transporterRegistered,
            vendorRegistered: vendorRegistered,
            customerRegistered: customerRegistered,
            dateOfBirth: dateOfBirth,
            vendorRef: vendorRef,
            transporterRef: transporterRef,
            customerRef: customerRef,
            reference: reference);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
