import 'dart:html';
import 'dart:async';
import 'package:react/react_client.dart' as reactClient;
import 'package:react/react.dart';
import 'package:tekartik_mdl_js_react/mdl_button.dart';
import 'package:tekartik_mdl_js_react/mdl_slider.dart';
import '../example_loader.dart';
import 'package:tekartik_mdl_js/mdl_js_loader.dart';

main() async {
  await loadMdlJsReact();

  reactClient.setClientConfiguration();

  render(div({}, [
    buttonComponent(fab: true, text:"mdl button"),
    buttonComponent(raised: true, text:"raised"),
    buttonComponent(text:"colored", colored : true),

    sliderComponent(),
  ]),
  querySelector('#container'));
}