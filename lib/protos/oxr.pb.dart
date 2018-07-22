///
//  Generated code. Do not modify.
///
// ignore_for_file: non_constant_identifier_names,library_prefixes

// ignore: UNUSED_SHOWN_NAME
import 'dart:core' show int, bool, double, String, List, override;

import 'package:protobuf/protobuf.dart';

class OxrInput extends GeneratedMessage {
  static final BuilderInfo _i = new BuilderInfo('OxrInput')
    ..aOS(1, 'api')
    ..aOS(2, 'base')
    ..aOS(3, 'symbols')
    ..aOS(4, 'date')
    ..aOS(5, 'start')
    ..aOS(6, 'end')
    ..aOS(7, 'value')
    ..aOS(8, 'from')
    ..aOS(9, 'to')
    ..aOS(10, 'startTime')
    ..aOS(11, 'period')
    ..aOB(12, 'prettyprint')
    ..aOB(13, 'showAlternative')
    ..aOB(14, 'showInactive')
    ..hasRequiredFields = false
  ;

  OxrInput() : super();
  OxrInput.fromBuffer(List<int> i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  OxrInput.fromJson(String i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  OxrInput clone() => new OxrInput()..mergeFromMessage(this);
  BuilderInfo get info_ => _i;
  static OxrInput create() => new OxrInput();
  static PbList<OxrInput> createRepeated() => new PbList<OxrInput>();
  static OxrInput getDefault() {
    if (_defaultInstance == null) _defaultInstance = new _ReadonlyOxrInput();
    return _defaultInstance;
  }
  static OxrInput _defaultInstance;
  static void $checkItem(OxrInput v) {
    if (v is! OxrInput) checkItemFailed(v, 'OxrInput');
  }

  String get api => $_getS(0, '');
  set api(String v) { $_setString(0, v); }
  bool hasApi() => $_has(0);
  void clearApi() => clearField(1);

  String get base => $_getS(1, '');
  set base(String v) { $_setString(1, v); }
  bool hasBase() => $_has(1);
  void clearBase() => clearField(2);

  String get symbols => $_getS(2, '');
  set symbols(String v) { $_setString(2, v); }
  bool hasSymbols() => $_has(2);
  void clearSymbols() => clearField(3);

  String get date => $_getS(3, '');
  set date(String v) { $_setString(3, v); }
  bool hasDate() => $_has(3);
  void clearDate() => clearField(4);

  String get start => $_getS(4, '');
  set start(String v) { $_setString(4, v); }
  bool hasStart() => $_has(4);
  void clearStart() => clearField(5);

  String get end => $_getS(5, '');
  set end(String v) { $_setString(5, v); }
  bool hasEnd() => $_has(5);
  void clearEnd() => clearField(6);

  String get value => $_getS(6, '');
  set value(String v) { $_setString(6, v); }
  bool hasValue() => $_has(6);
  void clearValue() => clearField(7);

  String get from => $_getS(7, '');
  set from(String v) { $_setString(7, v); }
  bool hasFrom() => $_has(7);
  void clearFrom() => clearField(8);

  String get to => $_getS(8, '');
  set to(String v) { $_setString(8, v); }
  bool hasTo() => $_has(8);
  void clearTo() => clearField(9);

  String get startTime => $_getS(9, '');
  set startTime(String v) { $_setString(9, v); }
  bool hasStartTime() => $_has(9);
  void clearStartTime() => clearField(10);

  String get period => $_getS(10, '');
  set period(String v) { $_setString(10, v); }
  bool hasPeriod() => $_has(10);
  void clearPeriod() => clearField(11);

  bool get prettyprint => $_get(11, false);
  set prettyprint(bool v) { $_setBool(11, v); }
  bool hasPrettyprint() => $_has(11);
  void clearPrettyprint() => clearField(12);

  bool get showAlternative => $_get(12, false);
  set showAlternative(bool v) { $_setBool(12, v); }
  bool hasShowAlternative() => $_has(12);
  void clearShowAlternative() => clearField(13);

  bool get showInactive => $_get(13, false);
  set showInactive(bool v) { $_setBool(13, v); }
  bool hasShowInactive() => $_has(13);
  void clearShowInactive() => clearField(14);
}

class _ReadonlyOxrInput extends OxrInput with ReadonlyMessageMixin {}

class OxrOutput extends GeneratedMessage {
  static final BuilderInfo _i = new BuilderInfo('OxrOutput')
    ..a<int>(1, 'status', PbFieldType.O3)
    ..aOS(2, 'message')
    ..hasRequiredFields = false
  ;

  OxrOutput() : super();
  OxrOutput.fromBuffer(List<int> i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  OxrOutput.fromJson(String i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  OxrOutput clone() => new OxrOutput()..mergeFromMessage(this);
  BuilderInfo get info_ => _i;
  static OxrOutput create() => new OxrOutput();
  static PbList<OxrOutput> createRepeated() => new PbList<OxrOutput>();
  static OxrOutput getDefault() {
    if (_defaultInstance == null) _defaultInstance = new _ReadonlyOxrOutput();
    return _defaultInstance;
  }
  static OxrOutput _defaultInstance;
  static void $checkItem(OxrOutput v) {
    if (v is! OxrOutput) checkItemFailed(v, 'OxrOutput');
  }

  int get status => $_get(0, 0);
  set status(int v) { $_setSignedInt32(0, v); }
  bool hasStatus() => $_has(0);
  void clearStatus() => clearField(1);

  String get message => $_getS(1, '');
  set message(String v) { $_setString(1, v); }
  bool hasMessage() => $_has(1);
  void clearMessage() => clearField(2);
}

class _ReadonlyOxrOutput extends OxrOutput with ReadonlyMessageMixin {}

