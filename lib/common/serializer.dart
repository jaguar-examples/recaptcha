library models;

import 'package:jaguar_serializer/serializer.dart';

part 'serializer.g.dart';

class MathResult {
  num addition;
  num subtraction;
  num multiplication;
  num division;

  static final MathResultSerializer serializer = new MathResultSerializer();
}

class MathOp {
  num opA;

  num opB;

  MathOp();

  MathOp.make(this.opA, this.opB);

  MathResult perform() => new MathResult()
    ..addition = opA + opB
    ..subtraction = opA - opB
    ..multiplication = opA * opB
    ..division = opA / opB;

  static final MathOpSerializer serializer = new MathOpSerializer();
}

@GenSerializer()
class MathResultSerializer extends Serializer<MathResult>
    with _$MathResultSerializer {
  @override
  MathResult createModel() => new MathResult();
}

@GenSerializer()
class MathOpSerializer extends Serializer<MathOp> with _$MathOpSerializer {
  @override
  MathOp createModel() => new MathOp();
}

final JsonRepo jRepo =
    new JsonRepo(serializers: [MathResult.serializer, MathOp.serializer]);
