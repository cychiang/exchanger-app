///
//  Generated code. Do not modify.
///
// ignore_for_file: non_constant_identifier_names,library_prefixes

// ignore: UNUSED_SHOWN_NAME
import 'dart:core' show int, bool, double, String, List, override;

import 'package:protobuf/protobuf.dart';
//  Generated code. Do not modify.
///
// ignore_for_file: non_constant_identifier_names,library_prefixes
// ignore: UNUSED_SHOWN_NAME


class OxrInput extends GeneratedMessage {
  static final BuilderInfo _i = new BuilderInfo('OxrInput')
    ..aOS(1, 'base')
    ..aOS(2, 'symbols')
    ..aOS(3, 'date')
    ..aOB(4, 'prettyprint')
    ..aOB(5, 'showAlternative')
    ..aOB(6, 'showInactive')
    ..hasRequiredFields = false;

  OxrInput() : super();

  OxrInput.fromBuffer(List<int> i,
      [ExtensionRegistry r = ExtensionRegistry.EMPTY])
      : super.fromBuffer(i, r);

  OxrInput.fromJson(String i, [ExtensionRegistry r = ExtensionRegistry.EMPTY])
      : super.fromJson(i, r);

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

  String get base => $_getS(0, '');

  set base(String v) {
    $_setString(0, v);
  }

  bool hasBase() => $_has(0);

  void clearBase() => clearField(1);

  String get symbols => $_getS(1, '');

  set symbols(String v) {
    $_setString(1, v);
  }

  bool hasSymbols() => $_has(1);

  void clearSymbols() => clearField(2);

  String get date => $_getS(2, '');

  set date(String v) {
    $_setString(2, v);
  }

  bool hasDate() => $_has(2);

  void clearDate() => clearField(3);

  bool get prettyprint => $_get(3, false);

  set prettyprint(bool v) {
    $_setBool(3, v);
  }

  bool hasPrettyprint() => $_has(3);

  void clearPrettyprint() => clearField(4);

  bool get showAlternative => $_get(4, false);

  set showAlternative(bool v) {
    $_setBool(4, v);
  }

  bool hasShowAlternative() => $_has(4);

  void clearShowAlternative() => clearField(5);

  bool get showInactive => $_get(5, false);

  set showInactive(bool v) {
    $_setBool(5, v);
  }

  bool hasShowInactive() => $_has(5);

  void clearShowInactive() => clearField(6);
}

class _ReadonlyOxrInput extends OxrInput with ReadonlyMessageMixin {}

class GrpcRate extends GeneratedMessage {
  static final BuilderInfo _i = new BuilderInfo('GrpcRate')
    ..aOS(1, 'currency')
    ..a<double>(2, 'ratio', PbFieldType.OF)
    ..hasRequiredFields = false;

  GrpcRate() : super();

  GrpcRate.fromBuffer(List<int> i,
      [ExtensionRegistry r = ExtensionRegistry.EMPTY])
      : super.fromBuffer(i, r);

  GrpcRate.fromJson(String i, [ExtensionRegistry r = ExtensionRegistry.EMPTY])
      : super.fromJson(i, r);

  GrpcRate clone() => new GrpcRate()..mergeFromMessage(this);

  BuilderInfo get info_ => _i;

  static GrpcRate create() => new GrpcRate();

  static PbList<GrpcRate> createRepeated() => new PbList<GrpcRate>();

  static GrpcRate getDefault() {
    if (_defaultInstance == null) _defaultInstance = new _ReadonlyGrpcRate();
    return _defaultInstance;
  }

  static GrpcRate _defaultInstance;

  static void $checkItem(GrpcRate v) {
    if (v is! GrpcRate) checkItemFailed(v, 'GrpcRate');
  }

  String get currency => $_getS(0, '');

  set currency(String v) {
    $_setString(0, v);
  }

  bool hasCurrency() => $_has(0);

  void clearCurrency() => clearField(1);

  double get ratio => $_getN(1);

  set ratio(double v) {
    $_setFloat(1, v);
  }

  bool hasRatio() => $_has(1);

  void clearRatio() => clearField(2);
}

class _ReadonlyGrpcRate extends GrpcRate with ReadonlyMessageMixin {}

class GrpcCurrency extends GeneratedMessage {
  static final BuilderInfo _i = new BuilderInfo('GrpcCurrency')
    ..aOS(1, 'currency')
    ..aOS(2, 'name')
    ..hasRequiredFields = false;

  GrpcCurrency() : super();

  GrpcCurrency.fromBuffer(List<int> i,
      [ExtensionRegistry r = ExtensionRegistry.EMPTY])
      : super.fromBuffer(i, r);

  GrpcCurrency.fromJson(String i,
      [ExtensionRegistry r = ExtensionRegistry.EMPTY])
      : super.fromJson(i, r);

  GrpcCurrency clone() => new GrpcCurrency()..mergeFromMessage(this);

  BuilderInfo get info_ => _i;

  static GrpcCurrency create() => new GrpcCurrency();

  static PbList<GrpcCurrency> createRepeated() => new PbList<GrpcCurrency>();

  static GrpcCurrency getDefault() {
    if (_defaultInstance == null)
      _defaultInstance = new _ReadonlyGrpcCurrency();
    return _defaultInstance;
  }

  static GrpcCurrency _defaultInstance;

  static void $checkItem(GrpcCurrency v) {
    if (v is! GrpcCurrency) checkItemFailed(v, 'GrpcCurrency');
  }

  String get currency => $_getS(0, '');

  set currency(String v) {
    $_setString(0, v);
  }

  bool hasCurrency() => $_has(0);

  void clearCurrency() => clearField(1);

  String get name => $_getS(1, '');

  set name(String v) {
    $_setString(1, v);
  }

  bool hasName() => $_has(1);

  void clearName() => clearField(2);
}

class _ReadonlyGrpcCurrency extends GrpcCurrency with ReadonlyMessageMixin {}
