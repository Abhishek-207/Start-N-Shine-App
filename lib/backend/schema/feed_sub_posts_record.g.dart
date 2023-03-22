// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'feed_sub_posts_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<FeedSubPostsRecord> _$feedSubPostsRecordSerializer =
    new _$FeedSubPostsRecordSerializer();

class _$FeedSubPostsRecordSerializer
    implements StructuredSerializer<FeedSubPostsRecord> {
  @override
  final Iterable<Type> types = const [FeedSubPostsRecord, _$FeedSubPostsRecord];
  @override
  final String wireName = 'FeedSubPostsRecord';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, FeedSubPostsRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.thumbnail;
    if (value != null) {
      result
        ..add('Thumbnail')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.videoLink;
    if (value != null) {
      result
        ..add('VideoLink')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.videoHeading;
    if (value != null) {
      result
        ..add('VideoHeading')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.quotePic;
    if (value != null) {
      result
        ..add('QuotePic')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.quoteText;
    if (value != null) {
      result
        ..add('QuoteText')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.quoteAuthor;
    if (value != null) {
      result
        ..add('QuoteAuthor')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.postType;
    if (value != null) {
      result
        ..add('PostType')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.articleHeading;
    if (value != null) {
      result
        ..add('ArticleHeading')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.articleText;
    if (value != null) {
      result
        ..add('ArticleText')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.postNum;
    if (value != null) {
      result
        ..add('PostNum')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.tags;
    if (value != null) {
      result
        ..add('Tags')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    value = object.likeNum;
    if (value != null) {
      result
        ..add('LikeNum')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.bookmarkNum;
    if (value != null) {
      result
        ..add('BookmarkNum')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.picture;
    if (value != null) {
      result
        ..add('Picture')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.mainFeedReference;
    if (value != null) {
      result
        ..add('MainFeedReference')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.textPost;
    if (value != null) {
      result
        ..add('TextPost')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.courtesyLink;
    if (value != null) {
      result
        ..add('CourtesyLink')
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
  FeedSubPostsRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new FeedSubPostsRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'Thumbnail':
          result.thumbnail = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'VideoLink':
          result.videoLink = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'VideoHeading':
          result.videoHeading = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'QuotePic':
          result.quotePic = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'QuoteText':
          result.quoteText = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'QuoteAuthor':
          result.quoteAuthor = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'PostType':
          result.postType = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'ArticleHeading':
          result.articleHeading = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'ArticleText':
          result.articleText = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'PostNum':
          result.postNum = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'Tags':
          result.tags.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object?>);
          break;
        case 'LikeNum':
          result.likeNum = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'BookmarkNum':
          result.bookmarkNum = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'Picture':
          result.picture = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'MainFeedReference':
          result.mainFeedReference = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'TextPost':
          result.textPost = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'CourtesyLink':
          result.courtesyLink = serializers.deserialize(value,
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

class _$FeedSubPostsRecord extends FeedSubPostsRecord {
  @override
  final String? thumbnail;
  @override
  final String? videoLink;
  @override
  final String? videoHeading;
  @override
  final String? quotePic;
  @override
  final String? quoteText;
  @override
  final String? quoteAuthor;
  @override
  final String? postType;
  @override
  final String? articleHeading;
  @override
  final String? articleText;
  @override
  final int? postNum;
  @override
  final BuiltList<String>? tags;
  @override
  final int? likeNum;
  @override
  final int? bookmarkNum;
  @override
  final String? picture;
  @override
  final DocumentReference<Object?>? mainFeedReference;
  @override
  final String? textPost;
  @override
  final String? courtesyLink;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$FeedSubPostsRecord(
          [void Function(FeedSubPostsRecordBuilder)? updates]) =>
      (new FeedSubPostsRecordBuilder()..update(updates))._build();

  _$FeedSubPostsRecord._(
      {this.thumbnail,
      this.videoLink,
      this.videoHeading,
      this.quotePic,
      this.quoteText,
      this.quoteAuthor,
      this.postType,
      this.articleHeading,
      this.articleText,
      this.postNum,
      this.tags,
      this.likeNum,
      this.bookmarkNum,
      this.picture,
      this.mainFeedReference,
      this.textPost,
      this.courtesyLink,
      this.ffRef})
      : super._();

  @override
  FeedSubPostsRecord rebuild(
          void Function(FeedSubPostsRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FeedSubPostsRecordBuilder toBuilder() =>
      new FeedSubPostsRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FeedSubPostsRecord &&
        thumbnail == other.thumbnail &&
        videoLink == other.videoLink &&
        videoHeading == other.videoHeading &&
        quotePic == other.quotePic &&
        quoteText == other.quoteText &&
        quoteAuthor == other.quoteAuthor &&
        postType == other.postType &&
        articleHeading == other.articleHeading &&
        articleText == other.articleText &&
        postNum == other.postNum &&
        tags == other.tags &&
        likeNum == other.likeNum &&
        bookmarkNum == other.bookmarkNum &&
        picture == other.picture &&
        mainFeedReference == other.mainFeedReference &&
        textPost == other.textPost &&
        courtesyLink == other.courtesyLink &&
        ffRef == other.ffRef;
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
                                                    $jc(
                                                        $jc(
                                                            $jc(
                                                                $jc(
                                                                    $jc(
                                                                        $jc(
                                                                            0,
                                                                            thumbnail
                                                                                .hashCode),
                                                                        videoLink
                                                                            .hashCode),
                                                                    videoHeading
                                                                        .hashCode),
                                                                quotePic
                                                                    .hashCode),
                                                            quoteText.hashCode),
                                                        quoteAuthor.hashCode),
                                                    postType.hashCode),
                                                articleHeading.hashCode),
                                            articleText.hashCode),
                                        postNum.hashCode),
                                    tags.hashCode),
                                likeNum.hashCode),
                            bookmarkNum.hashCode),
                        picture.hashCode),
                    mainFeedReference.hashCode),
                textPost.hashCode),
            courtesyLink.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'FeedSubPostsRecord')
          ..add('thumbnail', thumbnail)
          ..add('videoLink', videoLink)
          ..add('videoHeading', videoHeading)
          ..add('quotePic', quotePic)
          ..add('quoteText', quoteText)
          ..add('quoteAuthor', quoteAuthor)
          ..add('postType', postType)
          ..add('articleHeading', articleHeading)
          ..add('articleText', articleText)
          ..add('postNum', postNum)
          ..add('tags', tags)
          ..add('likeNum', likeNum)
          ..add('bookmarkNum', bookmarkNum)
          ..add('picture', picture)
          ..add('mainFeedReference', mainFeedReference)
          ..add('textPost', textPost)
          ..add('courtesyLink', courtesyLink)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class FeedSubPostsRecordBuilder
    implements Builder<FeedSubPostsRecord, FeedSubPostsRecordBuilder> {
  _$FeedSubPostsRecord? _$v;

  String? _thumbnail;
  String? get thumbnail => _$this._thumbnail;
  set thumbnail(String? thumbnail) => _$this._thumbnail = thumbnail;

  String? _videoLink;
  String? get videoLink => _$this._videoLink;
  set videoLink(String? videoLink) => _$this._videoLink = videoLink;

  String? _videoHeading;
  String? get videoHeading => _$this._videoHeading;
  set videoHeading(String? videoHeading) => _$this._videoHeading = videoHeading;

  String? _quotePic;
  String? get quotePic => _$this._quotePic;
  set quotePic(String? quotePic) => _$this._quotePic = quotePic;

  String? _quoteText;
  String? get quoteText => _$this._quoteText;
  set quoteText(String? quoteText) => _$this._quoteText = quoteText;

  String? _quoteAuthor;
  String? get quoteAuthor => _$this._quoteAuthor;
  set quoteAuthor(String? quoteAuthor) => _$this._quoteAuthor = quoteAuthor;

  String? _postType;
  String? get postType => _$this._postType;
  set postType(String? postType) => _$this._postType = postType;

  String? _articleHeading;
  String? get articleHeading => _$this._articleHeading;
  set articleHeading(String? articleHeading) =>
      _$this._articleHeading = articleHeading;

  String? _articleText;
  String? get articleText => _$this._articleText;
  set articleText(String? articleText) => _$this._articleText = articleText;

  int? _postNum;
  int? get postNum => _$this._postNum;
  set postNum(int? postNum) => _$this._postNum = postNum;

  ListBuilder<String>? _tags;
  ListBuilder<String> get tags => _$this._tags ??= new ListBuilder<String>();
  set tags(ListBuilder<String>? tags) => _$this._tags = tags;

  int? _likeNum;
  int? get likeNum => _$this._likeNum;
  set likeNum(int? likeNum) => _$this._likeNum = likeNum;

  int? _bookmarkNum;
  int? get bookmarkNum => _$this._bookmarkNum;
  set bookmarkNum(int? bookmarkNum) => _$this._bookmarkNum = bookmarkNum;

  String? _picture;
  String? get picture => _$this._picture;
  set picture(String? picture) => _$this._picture = picture;

  DocumentReference<Object?>? _mainFeedReference;
  DocumentReference<Object?>? get mainFeedReference =>
      _$this._mainFeedReference;
  set mainFeedReference(DocumentReference<Object?>? mainFeedReference) =>
      _$this._mainFeedReference = mainFeedReference;

  String? _textPost;
  String? get textPost => _$this._textPost;
  set textPost(String? textPost) => _$this._textPost = textPost;

  String? _courtesyLink;
  String? get courtesyLink => _$this._courtesyLink;
  set courtesyLink(String? courtesyLink) => _$this._courtesyLink = courtesyLink;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  FeedSubPostsRecordBuilder() {
    FeedSubPostsRecord._initializeBuilder(this);
  }

  FeedSubPostsRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _thumbnail = $v.thumbnail;
      _videoLink = $v.videoLink;
      _videoHeading = $v.videoHeading;
      _quotePic = $v.quotePic;
      _quoteText = $v.quoteText;
      _quoteAuthor = $v.quoteAuthor;
      _postType = $v.postType;
      _articleHeading = $v.articleHeading;
      _articleText = $v.articleText;
      _postNum = $v.postNum;
      _tags = $v.tags?.toBuilder();
      _likeNum = $v.likeNum;
      _bookmarkNum = $v.bookmarkNum;
      _picture = $v.picture;
      _mainFeedReference = $v.mainFeedReference;
      _textPost = $v.textPost;
      _courtesyLink = $v.courtesyLink;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FeedSubPostsRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$FeedSubPostsRecord;
  }

  @override
  void update(void Function(FeedSubPostsRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  FeedSubPostsRecord build() => _build();

  _$FeedSubPostsRecord _build() {
    _$FeedSubPostsRecord _$result;
    try {
      _$result = _$v ??
          new _$FeedSubPostsRecord._(
              thumbnail: thumbnail,
              videoLink: videoLink,
              videoHeading: videoHeading,
              quotePic: quotePic,
              quoteText: quoteText,
              quoteAuthor: quoteAuthor,
              postType: postType,
              articleHeading: articleHeading,
              articleText: articleText,
              postNum: postNum,
              tags: _tags?.build(),
              likeNum: likeNum,
              bookmarkNum: bookmarkNum,
              picture: picture,
              mainFeedReference: mainFeedReference,
              textPost: textPost,
              courtesyLink: courtesyLink,
              ffRef: ffRef);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'tags';
        _tags?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'FeedSubPostsRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
