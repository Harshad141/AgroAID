import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'report_record.g.dart';

abstract class ReportRecord
    implements Built<ReportRecord, ReportRecordBuilder> {
  static Serializer<ReportRecord> get serializer => _$reportRecordSerializer;

  @nullable
  @BuiltValueField(wireName: 'user_uid')
  String get userUid;

  @nullable
  @BuiltValueField(wireName: 'by_uid')
  String get byUid;

  @nullable
  String get reason;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(ReportRecordBuilder builder) => builder
    ..userUid = ''
    ..byUid = ''
    ..reason = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('report');

  static Stream<ReportRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<ReportRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  ReportRecord._();
  factory ReportRecord([void Function(ReportRecordBuilder) updates]) =
      _$ReportRecord;

  static ReportRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createReportRecordData({
  String userUid,
  String byUid,
  String reason,
}) =>
    serializers.toFirestore(
        ReportRecord.serializer,
        ReportRecord((r) => r
          ..userUid = userUid
          ..byUid = byUid
          ..reason = reason));
