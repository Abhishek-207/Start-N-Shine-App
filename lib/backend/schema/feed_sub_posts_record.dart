import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'feed_sub_posts_record.g.dart';

abstract class FeedSubPostsRecord
    implements Built<FeedSubPostsRecord, FeedSubPostsRecordBuilder> {
  static Serializer<FeedSubPostsRecord> get serializer =>
      _$feedSubPostsRecordSerializer;

  @BuiltValueField(wireName: 'Thumbnail')
  String? get thumbnail;

  @BuiltValueField(wireName: 'VideoLink')
  String? get videoLink;

  @BuiltValueField(wireName: 'VideoHeading')
  String? get videoHeading;

  @BuiltValueField(wireName: 'QuotePic')
  String? get quotePic;

  @BuiltValueField(wireName: 'QuoteText')
  String? get quoteText;

  @BuiltValueField(wireName: 'QuoteAuthor')
  String? get quoteAuthor;

  @BuiltValueField(wireName: 'PostType')
  String? get postType;

  @BuiltValueField(wireName: 'ArticleHeading')
  String? get articleHeading;

  @BuiltValueField(wireName: 'ArticleText')
  String? get articleText;

  @BuiltValueField(wireName: 'PostNum')
  int? get postNum;

  @BuiltValueField(wireName: 'Tags')
  BuiltList<String>? get tags;

  @BuiltValueField(wireName: 'LikeNum')
  int? get likeNum;

  @BuiltValueField(wireName: 'BookmarkNum')
  int? get bookmarkNum;

  @BuiltValueField(wireName: 'Picture')
  String? get picture;

  @BuiltValueField(wireName: 'MainFeedReference')
  DocumentReference? get mainFeedReference;

  @BuiltValueField(wireName: 'TextPost')
  String? get textPost;

  @BuiltValueField(wireName: 'CourtesyLink')
  String? get courtesyLink;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(FeedSubPostsRecordBuilder builder) => builder
    ..thumbnail = ''
    ..videoLink = ''
    ..videoHeading = ''
    ..quotePic = ''
    ..quoteText = ''
    ..quoteAuthor = ''
    ..postType = ''
    ..articleHeading = ''
    ..articleText = ''
    ..postNum = 0
    ..tags = ListBuilder()
    ..likeNum = 0
    ..bookmarkNum = 0
    ..picture = ''
    ..textPost = ''
    ..courtesyLink = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('FeedSubPosts');

  static Stream<FeedSubPostsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<FeedSubPostsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  FeedSubPostsRecord._();
  factory FeedSubPostsRecord(
          [void Function(FeedSubPostsRecordBuilder) updates]) =
      _$FeedSubPostsRecord;

  static FeedSubPostsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createFeedSubPostsRecordData({
  String? thumbnail,
  String? videoLink,
  String? videoHeading,
  String? quotePic,
  String? quoteText,
  String? quoteAuthor,
  String? postType,
  String? articleHeading,
  String? articleText,
  int? postNum,
  int? likeNum,
  int? bookmarkNum,
  String? picture,
  DocumentReference? mainFeedReference,
  String? textPost,
  String? courtesyLink,
}) {
  final firestoreData = serializers.toFirestore(
    FeedSubPostsRecord.serializer,
    FeedSubPostsRecord(
      (f) => f
        ..thumbnail = thumbnail
        ..videoLink = videoLink
        ..videoHeading = videoHeading
        ..quotePic = quotePic
        ..quoteText = quoteText
        ..quoteAuthor = quoteAuthor
        ..postType = postType
        ..articleHeading = articleHeading
        ..articleText = articleText
        ..postNum = postNum
        ..tags = null
        ..likeNum = likeNum
        ..bookmarkNum = bookmarkNum
        ..picture = picture
        ..mainFeedReference = mainFeedReference
        ..textPost = textPost
        ..courtesyLink = courtesyLink,
    ),
  );

  return firestoreData;
}
