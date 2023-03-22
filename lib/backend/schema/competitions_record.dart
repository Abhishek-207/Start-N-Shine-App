import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'competitions_record.g.dart';

abstract class CompetitionsRecord
    implements Built<CompetitionsRecord, CompetitionsRecordBuilder> {
  static Serializer<CompetitionsRecord> get serializer =>
      _$competitionsRecordSerializer;

  String? get title;

  String? get photoURL;

  String? get about;

  String? get place;

  String? get placeMaps;

  String? get competitionLink;

  DateTime? get date;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(CompetitionsRecordBuilder builder) => builder
    ..title = ''
    ..photoURL = ''
    ..about = ''
    ..place = ''
    ..placeMaps = ''
    ..competitionLink = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('competitions');

  static Stream<CompetitionsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<CompetitionsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  CompetitionsRecord._();
  factory CompetitionsRecord(
          [void Function(CompetitionsRecordBuilder) updates]) =
      _$CompetitionsRecord;

  static CompetitionsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createCompetitionsRecordData({
  String? title,
  String? photoURL,
  String? about,
  String? place,
  String? placeMaps,
  String? competitionLink,
  DateTime? date,
}) {
  final firestoreData = serializers.toFirestore(
    CompetitionsRecord.serializer,
    CompetitionsRecord(
      (c) => c
        ..title = title
        ..photoURL = photoURL
        ..about = about
        ..place = place
        ..placeMaps = placeMaps
        ..competitionLink = competitionLink
        ..date = date,
    ),
  );

  return firestoreData;
}
