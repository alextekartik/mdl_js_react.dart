@TestOn("browser")
library tekartik.mdl_js.loader_test;

import 'package:tekartik_mdl_js_react/react_loader.dart';
import 'package:test/test.dart';
import 'dart:js' as js;

void main() {

  group('loader', () {
    test('load', () async {
      expect(js.context['React'], isNull);
      await(loadReactJs());
      expect(js.context['React'], isNotNull);
    });

  });


}
