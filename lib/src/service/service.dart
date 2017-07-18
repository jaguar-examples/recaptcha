import 'dart:async';

import 'package:angular2/core.dart';
import 'package:http/browser_client.dart';
import 'package:jaguar_client/jaguar_client.dart';

import 'package:recaptcha/common/serializer.dart';

export 'package:recaptcha/common/serializer.dart';

@Injectable()
class Service {
  final SerializedJsonClient client =
      new JsonClient(new BrowserClient(), repo: jRepo).serialized();

  Future<MathResult> math(MathOp op, String recaptcha) async {
    return await client.post('/api/math',
        body: op, headers: {'jaguar-recaptcha': recaptcha}, type: MathResult);
  }
}
