// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shops_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ShopsRecord> _$shopsRecordSerializer = new _$ShopsRecordSerializer();

class _$ShopsRecordSerializer implements StructuredSerializer<ShopsRecord> {
  @override
  final Iterable<Type> types = const [ShopsRecord, _$ShopsRecord];
  @override
  final String wireName = 'ShopsRecord';

  @override
  Iterable<Object> serialize(Serializers serializers, ShopsRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.vendorRef;
    if (value != null) {
      result
        ..add('vendor_ref')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType(Object)])));
    }
    value = object.userRef;
    if (value != null) {
      result
        ..add('user_ref')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType(Object)])));
    }
    value = object.shopPhoto;
    if (value != null) {
      result
        ..add('shop_photo')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.shopLogo;
    if (value != null) {
      result
        ..add('shop_logo')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.shopName;
    if (value != null) {
      result
        ..add('shop_name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.shopCategory;
    if (value != null) {
      result
        ..add('shop_category')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.address;
    if (value != null) {
      result
        ..add('address')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.state;
    if (value != null) {
      result
        ..add('state')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.city;
    if (value != null) {
      result
        ..add('city')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.pincode;
    if (value != null) {
      result
        ..add('pincode')
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
  ShopsRecord deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ShopsRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'vendor_ref':
          result.vendorRef = serializers.deserialize(value,
                  specifiedType: const FullType(
                      DocumentReference, const [const FullType(Object)]))
              as DocumentReference<Object>;
          break;
        case 'user_ref':
          result.userRef = serializers.deserialize(value,
                  specifiedType: const FullType(
                      DocumentReference, const [const FullType(Object)]))
              as DocumentReference<Object>;
          break;
        case 'shop_photo':
          result.shopPhoto = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'shop_logo':
          result.shopLogo = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'shop_name':
          result.shopName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'shop_category':
          result.shopCategory = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'address':
          result.address = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'state':
          result.state = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'city':
          result.city = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'pincode':
          result.pincode = serializers.deserialize(value,
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

class _$ShopsRecord extends ShopsRecord {
  @override
  final DocumentReference<Object> vendorRef;
  @override
  final DocumentReference<Object> userRef;
  @override
  final String shopPhoto;
  @override
  final String shopLogo;
  @override
  final String shopName;
  @override
  final String shopCategory;
  @override
  final String address;
  @override
  final String state;
  @override
  final String city;
  @override
  final String pincode;
  @override
  final DocumentReference<Object> reference;

  factory _$ShopsRecord([void Function(ShopsRecordBuilder) updates]) =>
      (new ShopsRecordBuilder()..update(updates)).build();

  _$ShopsRecord._(
      {this.vendorRef,
      this.userRef,
      this.shopPhoto,
      this.shopLogo,
      this.shopName,
      this.shopCategory,
      this.address,
      this.state,
      this.city,
      this.pincode,
      this.reference})
      : super._();

  @override
  ShopsRecord rebuild(void Function(ShopsRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ShopsRecordBuilder toBuilder() => new ShopsRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ShopsRecord &&
        vendorRef == other.vendorRef &&
        userRef == other.userRef &&
        shopPhoto == other.shopPhoto &&
        shopLogo == other.shopLogo &&
        shopName == other.shopName &&
        shopCategory == other.shopCategory &&
        address == other.address &&
        state == other.state &&
        city == other.city &&
        pincode == other.pincode &&
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
                                        $jc($jc(0, vendorRef.hashCode),
                                            userRef.hashCode),
                                        shopPhoto.hashCode),
                                    shopLogo.hashCode),
                                shopName.hashCode),
                            shopCategory.hashCode),
                        address.hashCode),
                    state.hashCode),
                city.hashCode),
            pincode.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ShopsRecord')
          ..add('vendorRef', vendorRef)
          ..add('userRef', userRef)
          ..add('shopPhoto', shopPhoto)
          ..add('shopLogo', shopLogo)
          ..add('shopName', shopName)
          ..add('shopCategory', shopCategory)
          ..add('address', address)
          ..add('state', state)
          ..add('city', city)
          ..add('pincode', pincode)
          ..add('reference', reference))
        .toString();
  }
}

class ShopsRecordBuilder implements Builder<ShopsRecord, ShopsRecordBuilder> {
  _$ShopsRecord _$v;

  DocumentReference<Object> _vendorRef;
  DocumentReference<Object> get vendorRef => _$this._vendorRef;
  set vendorRef(DocumentReference<Object> vendorRef) =>
      _$this._vendorRef = vendorRef;

  DocumentReference<Object> _userRef;
  DocumentReference<Object> get userRef => _$this._userRef;
  set userRef(DocumentReference<Object> userRef) => _$this._userRef = userRef;

  String _shopPhoto;
  String get shopPhoto => _$this._shopPhoto;
  set shopPhoto(String shopPhoto) => _$this._shopPhoto = shopPhoto;

  String _shopLogo;
  String get shopLogo => _$this._shopLogo;
  set shopLogo(String shopLogo) => _$this._shopLogo = shopLogo;

  String _shopName;
  String get shopName => _$this._shopName;
  set shopName(String shopName) => _$this._shopName = shopName;

  String _shopCategory;
  String get shopCategory => _$this._shopCategory;
  set shopCategory(String shopCategory) => _$this._shopCategory = shopCategory;

  String _address;
  String get address => _$this._address;
  set address(String address) => _$this._address = address;

  String _state;
  String get state => _$this._state;
  set state(String state) => _$this._state = state;

  String _city;
  String get city => _$this._city;
  set city(String city) => _$this._city = city;

  String _pincode;
  String get pincode => _$this._pincode;
  set pincode(String pincode) => _$this._pincode = pincode;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  ShopsRecordBuilder() {
    ShopsRecord._initializeBuilder(this);
  }

  ShopsRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _vendorRef = $v.vendorRef;
      _userRef = $v.userRef;
      _shopPhoto = $v.shopPhoto;
      _shopLogo = $v.shopLogo;
      _shopName = $v.shopName;
      _shopCategory = $v.shopCategory;
      _address = $v.address;
      _state = $v.state;
      _city = $v.city;
      _pincode = $v.pincode;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ShopsRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ShopsRecord;
  }

  @override
  void update(void Function(ShopsRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ShopsRecord build() {
    final _$result = _$v ??
        new _$ShopsRecord._(
            vendorRef: vendorRef,
            userRef: userRef,
            shopPhoto: shopPhoto,
            shopLogo: shopLogo,
            shopName: shopName,
            shopCategory: shopCategory,
            address: address,
            state: state,
            city: city,
            pincode: pincode,
            reference: reference);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
