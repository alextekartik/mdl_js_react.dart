library tekartik.mdl_js_react.example_loader;

import 'package:tekartik_mdl_js_react/react_loader.dart';
import 'package:tekartik_mdl_js/mdl_js_loader.dart';
import 'dart:async';

Future loadMdlJsReact() async {
  await Future.wait([loadMdlJs(), loadReactJs(), loadMdlCss()]);
}