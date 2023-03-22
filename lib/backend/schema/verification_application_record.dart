import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'verification_application_record.g.dart';

abstract class VerificationApplicationRecord
    implements
        Built<VerificationApplicationRecord,
            VerificationApplicationRecordBuilder> {
  static Serializer<VerificationApplicationRecord> get serializer =>
      _$verificationApplicationRecordSerializer;

  @BuiltValueField(wireName: 'Fullname')
  String? get fullname;

  @BuiltValueField(wireName: 'Category')
  String? get category;

  @BuiltValueField(wireName: 'UserReference')
  DocumentReference? get userReference;

  @BuiltValueField(wireName: 'UploadedFile')
  String? get uploadedFile;

  @BuiltValueField(wireName: 'DocType')
  String? get docType;

  @BuiltValueField(wireName: 'UploadedFileURL')
  String? get uploadedFileURL;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(
          VerificationApplicationRecordBuilder builder) =>
      builder
        ..fullname = ''
        ..category = ''
        ..uploadedFile = ''
        ..docType = ''
        ..uploadedFileURL = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('verificationApplication');

  static Stream<VerificationApplicationRecord> getDocument(
          DocumentReference ref) =>
      ref.snapshots().map(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<VerificationApplicationRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  VerificationApplicationRecord._();
  factory VerificationApplicationRecord(
          [void Function(VerificationApplicationRecordBuilder) updates]) =
      _$VerificationApplicationRecord;

  static VerificationApplicationRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createVerificationApplicationRecordData({
  String? fullname,
  String? category,
  DocumentReference? userReference,
  String? uploadedFile,
  String? docType,
  String? uploadedFileURL,
}) {
  final firestoreData = serializers.toFirestore(
    VerificationApplicationRecord.serializer,
    VerificationApplicationRecord(
      (v) => v
        ..fullname = fullname
        ..category = category
        ..userReference = userReference
        ..uploadedFile = uploadedFile
        ..docType = docType
        ..uploadedFileURL = uploadedFileURL,
    ),
  );

  return firestoreData;
}
