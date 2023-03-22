import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'participants_record.g.dart';

abstract class ParticipantsRecord
    implements Built<ParticipantsRecord, ParticipantsRecordBuilder> {
  static Serializer<ParticipantsRecord> get serializer =>
      _$participantsRecordSerializer;

  DocumentReference? get userID;

  int? get referralCount;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  DocumentReference get parentReference => reference.parent.parent!;

  static void _initializeBuilder(ParticipantsRecordBuilder builder) =>
      builder..referralCount = 0;

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('participants')
          : FirebaseFirestore.instance.collectionGroup('participants');

  static DocumentReference createDoc(DocumentReference parent) =>
      parent.collection('participants').doc();

  static Stream<ParticipantsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<ParticipantsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  ParticipantsRecord._();
  factory ParticipantsRecord(
          [void Function(ParticipantsRecordBuilder) updates]) =
      _$ParticipantsRecord;

  static ParticipantsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createParticipantsRecordData({
  DocumentReference? userID,
  int? referralCount,
}) {
  final firestoreData = serializers.toFirestore(
    ParticipantsRecord.serializer,
    ParticipantsRecord(
      (p) => p
        ..userID = userID
        ..referralCount = referralCount,
    ),
  );

  return firestoreData;
}
