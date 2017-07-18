// GENERATED CODE - DO NOT MODIFY BY HAND

part of models;

// **************************************************************************
// Generator: SerializerGenerator
// Target: class MathResultSerializer
// **************************************************************************

abstract class _$MathResultSerializer implements Serializer<MathResult> {
  Map toMap(MathResult model, {bool withType: false, String typeKey}) {
    Map ret = new Map();
    if (model != null) {
      if (model.addition != null) {
        ret["addition"] = model.addition;
      }
      if (model.subtraction != null) {
        ret["subtraction"] = model.subtraction;
      }
      if (model.multiplication != null) {
        ret["multiplication"] = model.multiplication;
      }
      if (model.division != null) {
        ret["division"] = model.division;
      }
      if (modelString() != null && withType) {
        ret[typeKey ?? defaultTypeInfoKey] = modelString();
      }
    }
    return ret;
  }

  MathResult fromMap(Map map, {MathResult model, String typeKey}) {
    if (map is! Map) {
      return null;
    }
    if (model is! MathResult) {
      model = createModel();
    }
    model.addition = map["addition"];
    model.subtraction = map["subtraction"];
    model.multiplication = map["multiplication"];
    model.division = map["division"];
    return model;
  }

  String modelString() => "MathResult";
}

// **************************************************************************
// Generator: SerializerGenerator
// Target: class MathOpSerializer
// **************************************************************************

abstract class _$MathOpSerializer implements Serializer<MathOp> {
  Map toMap(MathOp model, {bool withType: false, String typeKey}) {
    Map ret = new Map();
    if (model != null) {
      if (model.opA != null) {
        ret["opA"] = model.opA;
      }
      if (model.opB != null) {
        ret["opB"] = model.opB;
      }
      if (modelString() != null && withType) {
        ret[typeKey ?? defaultTypeInfoKey] = modelString();
      }
    }
    return ret;
  }

  MathOp fromMap(Map map, {MathOp model, String typeKey}) {
    if (map is! Map) {
      return null;
    }
    if (model is! MathOp) {
      model = createModel();
    }
    model.opA = map["opA"];
    model.opB = map["opB"];
    return model;
  }

  String modelString() => "MathOp";
}
