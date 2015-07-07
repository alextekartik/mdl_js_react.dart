import 'dart:html';
import 'dart:async';
import 'package:react/react_client.dart' as reactClient;
import 'package:react/react.dart';
import 'package:tekartik_mdl_js_react/mdl_button.dart';
import '../example_loader.dart';
import 'package:tekartik_mdl_js/mdl_js_loader.dart';

main() async {
  await loadMdlJsReact();
  //await loadReactJs();
  /*
  //this should be called once at the begging of application
  var button = document.createElement('button');
  var textNode = document.createTextNode('Click Me!');
  button.appendChild(textNode);
  button.className = 'mdl-button mdl-js-button mdl-js-ripple-effect';
  componentHandler.upgradeElement(button, 'MaterialButton');
  document.getElementById('container').appendChild(button);
  */
  reactClient.setClientConfiguration();

  var component = button({"className": "mdl-button mdl-js-button mdl-js-ripple-effect"}, "Hello world!");
  //render(buttonComponent({}), querySelector('#content'));
  render(component, querySelector('#content1'));
  render(div({}, [buttonComponent(fab: true, text:"mdl button"), buttonComponent(raised: true, text:"raised"), buttonComponent(text:"colored", colored : true)]), querySelector('#content2'));
}