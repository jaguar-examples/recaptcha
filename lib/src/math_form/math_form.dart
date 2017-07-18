// Copyright (c) 2017, teja. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

import 'dart:async';

import 'package:angular2/angular2.dart';
import 'package:angular_components/angular_components.dart';
import 'package:angular_recaptcha/angular_recaptcha.dart';

import 'package:recaptcha/src/service/service.dart';

@Component(
  selector: 'math-form',
  styleUrls: const ['math_form.css'],
  templateUrl: 'math_form.html',
  directives: const [
    CORE_DIRECTIVES,
    materialDirectives,
    AngularRecaptcha,
  ],
  providers: const [Service],
)
class MathForm implements OnInit {
  final Service service;

  MathForm(this.service);

  @override
  Future<Null> ngOnInit() async {}

  String errMsg;

  String recaptcha;

  bool valid = false;

  num opA = 0;

  num opB = 0;

  parseOpA(String val) {
    opA = int.parse(val, onError: (_) => 0);
  }

  parseOpB(String val) {
    opB = int.parse(val, onError: (_) => 0);
  }

  MathResult result;

  submit() async {
    /* TODO
    errMsg = null;

    if (recaptcha == null) {
      errMsg = 'Please solve the reCAPTCHA challenge!';
      return;
    }
    */

    // TODO capture error
    result = await service.math(new MathOp.make(opA, opB), recaptcha);
  }
}
