// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'verification_application_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<VerificationApplicationRecord>
    _$verificationApplicationRecordSerializer =
    new _$VerificationApplicationRecordSerializer();

class _$VerificationApplicationRecordSerializer
    implements StructuredSerializer<VerificationApplicationRecord> {
  @override
  final Iterable<Type> types = const [
    VerificationApplicationRecord,
    _$VerificationApplicationRecord
  ];
  @override
  final String wireName = 'VerificationApplicationRecord';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, VerificationApplicationRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.fullname;
    if (value != null) {
      result
        ..add('Fullname')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.category;
    if (value != null) {
      result
        ..add('Category')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.userReference;
    if (value != null) {
      result
        ..add('UserReference')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.uploadedFile;
    if (value != null) {
      result
        ..add('UploadedFile')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.docType;
    if (value != null) {
      result
        ..add('DocType')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.uploadedFileURL;
    if (value != null) {
      result
        ..add('UploadedFileURL')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.ffRef;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    return result;
  }

  @override
  VerificationApplicationRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new VerificationApplicationRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'Fullname':
          result.fullname = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Category':
          result.category = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'UserReference':
          result.userReference = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'UploadedFile':
          result.uploadedFile = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'DocType':
          result.docType = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'UploadedFileURL':
          result.uploadedFileURL = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Document__Reference__Field':
          result.ffRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
      }
    }

    return result.build();
  }
}

class _$VerificationApplicationRecord extends VerificationApplicationRecord {
  @override
  final String? fullname;
  @override
  final String? category;
  @override
  final DocumentReference<Object?>? userReference;
  @override
  final String? uploadedFile;
  @override
  final String? docType;
  @override
  final String? uploadedFileURL;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$VerificationApplicationRecord(
          [void Function(VerificationApplicationRecordBuilder)? updates]) =>
      (new VerificationApplicationRecordBuilder()..update(updates))._build();

  _$VerificationApplicationRecord._(
      {this.fullname,
      this.category,
      this.userReference,
      this.uploadedFile,
      this.docType,
      this.uploadedFileURL,
      this.ffRef})
      : super._();

  @override
  VerificationApplicationRecord rebuild(
          void Function(VerificationApplicationRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  VerificationApplicationRecordBuilder toBuilder() =>
      new VerificationApplicationRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is VerificationApplicationRecord &&
        fullname == other.fullname &&
        category == other.category &&
        userReference == other.userReference &&
        uploadedFile == other.uploadedFile &&
        docType == other.docType &&
        uploadedFileURL == other.uploadedFileURL &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc($jc($jc(0, fullname.hashCode), category.hashCode),
                        userReference.hashCode),
                    uploadedFile.hashCode),
                docType.hashCode),
            uploadedFileURL.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'VerificationApplicationRecord')
          ..add('fullname', fullname)
          ..add('category', category)
          ..add('userReference', userReference)
          ..add('uploadedFile', uploadedFile)
          ..add('docType', docType)
          ..add('uploadedFileURL', uploadedFileURL)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class VerificationApplicationRecordBuilder
    implements
        Builder<VerificationApplicationRecord,
            VerificationApplicationRecordBuilder> {
  _$VerificationApplicationRecord? _$v;

  String? _fullname;
  String? get fullname => _$this._fullname;
  set fullname(String? fullname) => _$this._fullname = fullname;

  String? _category;
  String? get category => _$this._category;
  set category(String? category) => _$this._category = category;

  DocumentReference<Object?>? _userReference;
  DocumentReference<Object?>? get userReference => _$this._userReference;
  set userReference(DocumentReference<Object?>? userReference) =>
      _$this._userReference = userReference;

  String? _uploadedFile;
  String? get uploadedFile => _$this._uploadedFile;
  set uploadedFile(String? uploadedFile) => _$this._uploadedFile = uploadedFile;

  String? _docType;
  String? get docType => _$this._docType;
  set docType(String? docType) => _$this._docType = docType;

  String? _uploadedFileURL;
  String? get uploadedFileURL => _$this._uploadedFileURL;
  set uploadedFileURL(String? uploadedFileURL) =>
      _$this._uploadedFileURL = uploadedFileURL;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  VerificationApplicationRecordBuilder() {
    VerificationApplicationRecord._initializeBuilder(this);
  }

  VerificationApplicationRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _fullname = $v.fullname;
      _category = $v.category;
      _userReference = $v.userReference;
      _uploadedFile = $v.uploadedFile;
      _docType = $v.docType;
      _uploadedFileURL = $v.uploadedFileURL;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(VerificationApplicationRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$VerificationApplicationRecord;
  }

  @override
  void update(void Function(VerificationApplicationRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  VerificationApplicationRecord build() => _build();

  _$VerificationApplicationRecord _build() {
    final _$result = _$v ??
        new _$VerificationApplicationRecord._(
            fullname: fullname,
            category: category,
            userReference: userReference,
            uploadedFile: uploadedFile,
            docType: docType,
            uploadedFileURL: uploadedFileURL,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
