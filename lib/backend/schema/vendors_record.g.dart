// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vendors_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<VendorsRecord> _$vendorsRecordSerializer =
    new _$VendorsRecordSerializer();

class _$VendorsRecordSerializer implements StructuredSerializer<VendorsRecord> {
  @override
  final Iterable<Type> types = const [VendorsRecord, _$VendorsRecord];
  @override
  final String wireName = 'VendorsRecord';

  @override
  Iterable<Object> serialize(Serializers serializers, VendorsRecord object,
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
    value = object.shopRef;
    if (value != null) {
      result
        ..add('shop_ref')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType(Object)])));
    }
    value = object.gstNumber;
    if (value != null) {
      result
        ..add('gst_number')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.panNumber;
    if (value != null) {
      result
        ..add('pan_number')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.aadharImg;
    if (value != null) {
      result
        ..add('aadhar_img')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.panImg;
    if (value != null) {
      result
        ..add('pan_img')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.fssaiImg;
    if (value != null) {
      result
        ..add('fssai_img')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
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
  VendorsRecord deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new VendorsRecordBuilder();

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
        case 'shop_ref':
          result.shopRef = serializers.deserialize(value,
                  specifiedType: const FullType(
                      DocumentReference, const [const FullType(Object)]))
              as DocumentReference<Object>;
          break;
        case 'gst_number':
          result.gstNumber = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'pan_number':
          result.panNumber = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'aadhar_img':
          result.aadharImg = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'pan_img':
          result.panImg = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'fssai_img':
          result.fssaiImg = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
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

class _$VendorsRecord extends VendorsRecord {
  @override
  final DocumentReference<Object> userRef;
  @override
  final bool registrationCompleted;
  @override
  final DocumentReference<Object> shopRef;
  @override
  final String gstNumber;
  @override
  final String panNumber;
  @override
  final String aadharImg;
  @override
  final String panImg;
  @override
  final String fssaiImg;
  @override
  final DocumentReference<Object> reference;

  factory _$VendorsRecord([void Function(VendorsRecordBuilder) updates]) =>
      (new VendorsRecordBuilder()..update(updates)).build();

  _$VendorsRecord._(
      {this.userRef,
      this.registrationCompleted,
      this.shopRef,
      this.gstNumber,
      this.panNumber,
      this.aadharImg,
      this.panImg,
      this.fssaiImg,
      this.reference})
      : super._();

  @override
  VendorsRecord rebuild(void Function(VendorsRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  VendorsRecordBuilder toBuilder() => new VendorsRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is VendorsRecord &&
        userRef == other.userRef &&
        registrationCompleted == other.registrationCompleted &&
        shopRef == other.shopRef &&
        gstNumber == other.gstNumber &&
        panNumber == other.panNumber &&
        aadharImg == other.aadharImg &&
        panImg == other.panImg &&
        fssaiImg == other.fssaiImg &&
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
                                $jc($jc(0, userRef.hashCode),
                                    registrationCompleted.hashCode),
                                shopRef.hashCode),
                            gstNumber.hashCode),
                        panNumber.hashCode),
                    aadharImg.hashCode),
                panImg.hashCode),
            fssaiImg.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('VendorsRecord')
          ..add('userRef', userRef)
          ..add('registrationCompleted', registrationCompleted)
          ..add('shopRef', shopRef)
          ..add('gstNumber', gstNumber)
          ..add('panNumber', panNumber)
          ..add('aadharImg', aadharImg)
          ..add('panImg', panImg)
          ..add('fssaiImg', fssaiImg)
          ..add('reference', reference))
        .toString();
  }
}

class VendorsRecordBuilder
    implements Builder<VendorsRecord, VendorsRecordBuilder> {
  _$VendorsRecord _$v;

  DocumentReference<Object> _userRef;
  DocumentReference<Object> get userRef => _$this._userRef;
  set userRef(DocumentReference<Object> userRef) => _$this._userRef = userRef;

  bool _registrationCompleted;
  bool get registrationCompleted => _$this._registrationCompleted;
  set registrationCompleted(bool registrationCompleted) =>
      _$this._registrationCompleted = registrationCompleted;

  DocumentReference<Object> _shopRef;
  DocumentReference<Object> get shopRef => _$this._shopRef;
  set shopRef(DocumentReference<Object> shopRef) => _$this._shopRef = shopRef;

  String _gstNumber;
  String get gstNumber => _$this._gstNumber;
  set gstNumber(String gstNumber) => _$this._gstNumber = gstNumber;

  String _panNumber;
  String get panNumber => _$this._panNumber;
  set panNumber(String panNumber) => _$this._panNumber = panNumber;

  String _aadharImg;
  String get aadharImg => _$this._aadharImg;
  set aadharImg(String aadharImg) => _$this._aadharImg = aadharImg;

  String _panImg;
  String get panImg => _$this._panImg;
  set panImg(String panImg) => _$this._panImg = panImg;

  String _fssaiImg;
  String get fssaiImg => _$this._fssaiImg;
  set fssaiImg(String fssaiImg) => _$this._fssaiImg = fssaiImg;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  VendorsRecordBuilder() {
    VendorsRecord._initializeBuilder(this);
  }

  VendorsRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _userRef = $v.userRef;
      _registrationCompleted = $v.registrationCompleted;
      _shopRef = $v.shopRef;
      _gstNumber = $v.gstNumber;
      _panNumber = $v.panNumber;
      _aadharImg = $v.aadharImg;
      _panImg = $v.panImg;
      _fssaiImg = $v.fssaiImg;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(VendorsRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$VendorsRecord;
  }

  @override
  void update(void Function(VendorsRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$VendorsRecord build() {
    final _$result = _$v ??
        new _$VendorsRecord._(
            userRef: userRef,
            registrationCompleted: registrationCompleted,
            shopRef: shopRef,
            gstNumber: gstNumber,
            panNumber: panNumber,
            aadharImg: aadharImg,
            panImg: panImg,
            fssaiImg: fssaiImg,
            reference: reference);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
