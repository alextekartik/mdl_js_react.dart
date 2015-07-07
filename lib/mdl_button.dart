library tekartik.mdl_js_react.mdl_button;

import "package:react/react.dart" as react;
import "package:tekartik_mdl_js/mdl_js.dart" as mdl;
import 'package:tekartik_utils/js_utils.dart';

class _MdlButtonComponent extends react.Component {
  bool get colored => props['colored'];

  String get text => props['text'];

  bool get fab => props['fab'];

  bool get raised => props['raised'];

  @override
  void componentDidMount(/*DOMElement*/
                         rootNode) {
    mdl.componentHandler.upgradeElement(rootNode, jsClass: mdl.materialButtonType);
  }

  @override
  render() {
    print('rendering');
    List classes = ["mdl-button", "mdl-js-button", "mdl-js-ripple-effect"];
    if (fab == true) {
      classes.add("mdl-button--fab");
    }
    if (raised == true) {
      classes.add("mdl-button--raised");
    }
    if (colored == true) {
      classes.add("mdl-button--colored");
    }
    var button = react.button({"className": classes.join(' ')}, text);
    //print(jsObjectToDebugString(button));
    return button;
  }

}

var _buttonComponent = react.registerComponent(() => new _MdlButtonComponent());

typedef MdlComponentType({bool fab, String text, bool raised, bool colored});


MdlComponentType buttonComponent = ({fab, text, raised, colored}) =>
_buttonComponent({'fab':fab, 'text': text, 'raised': raised, 'colored': colored});
