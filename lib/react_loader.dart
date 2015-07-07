library tekartik.mdl_js_react.loader;


import 'package:tekartik_utils/js_utils.dart';
import 'dart:async';
import 'dart:js' as js;

Future loadReactJs() async {
  /*
  // already loaded?
  if (js.context['componentHandler'] != null) {
    return null;
  }
  */

  // load mdl js
  await loadJavascriptScript("packages/react/react.js");
  return null;
}
