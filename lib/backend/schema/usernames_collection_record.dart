import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'usernames_collection_record.g.dart';

abstract class UsernamesCollectionRecord
    implements
        Built<UsernamesCollectionRecord, UsernamesCollectionRecordBuilder> {
  static Serializer<UsernamesCollectionRecord> get serializer =>
      _$usernamesCollectionRecordSerializer;

  @BuiltValueField(wireName: 'taken_usernames')
  BuiltList<String>? get takenUsernames;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(UsernamesCollectionRecordBuilder builder) =>
      builder..takenUsernames = ListBuilder();

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('UsernamesCollection');

  static Stream<UsernamesCollectionRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<UsernamesCollectionRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  UsernamesCollectionRecord._();
  factory UsernamesCollectionRecord(
          [void Function(UsernamesCollectionRecordBuilder) updates]) =
      _$UsernamesCollectionRecord;

  static UsernamesCollectionRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createUsernamesCollectionRecordData() {
  final firestoreData = serializers.toFirestore(
    UsernamesCollectionRecord.serializer,
    UsernamesCollectionRecord(
      (u) => u..takenUsernames = null,
    ),
  );

  return firestoreData;
}
