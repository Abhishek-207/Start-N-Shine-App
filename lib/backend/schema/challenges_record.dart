import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'challenges_record.g.dart';

abstract class ChallengesRecord
    implements Built<ChallengesRecord, ChallengesRecordBuilder> {
  static Serializer<ChallengesRecord> get serializer =>
      _$challengesRecordSerializer;

  String? get challengeImage;

  String? get name;

  DateTime? get startDate;

  DateTime? get endDate;

  String? get status;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(ChallengesRecordBuilder builder) => builder
    ..challengeImage = ''
    ..name = ''
    ..status = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('challenges');

  static Stream<ChallengesRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<ChallengesRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  ChallengesRecord._();
  factory ChallengesRecord([void Function(ChallengesRecordBuilder) updates]) =
      _$ChallengesRecord;

  static ChallengesRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createChallengesRecordData({
  String? challengeImage,
  String? name,
  DateTime? startDate,
  DateTime? endDate,
  String? status,
}) {
  final firestoreData = serializers.toFirestore(
    ChallengesRecord.serializer,
    ChallengesRecord(
      (c) => c
        ..challengeImage = challengeImage
        ..name = name
        ..startDate = startDate
        ..endDate = endDate
        ..status = status,
    ),
  );

  return firestoreData;
}
