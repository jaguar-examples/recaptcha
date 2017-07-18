library recaptcha.server.api;

import 'dart:async';
import 'package:jaguar/jaguar.dart';
import 'package:jaguar_json/jaguar_json.dart';
import 'package:jaguar_serializer/serializer.dart';
import 'package:jaguar_recaptcha/jaguar_recaptcha.dart';

import 'package:recaptcha/common/serializer.dart';

@Api(path: '/api')
class Routes extends Object with JsonRoutes {
  JsonRepo get repo => jRepo;

  RecaptchaInterceptor recaptcha(_) => new RecaptchaInterceptor('6Lf3HCkUAAAAAHcT1d-U6soc2WA6yvTBzqabG1og');

  @Post(path: '/math')
  @WrapOne(#recaptcha)
  Future<Response<String>> math(Context ctx) async {
    final MathOp op = await fromJson(ctx);
    return toJson(op.perform());
  }
}