library tekartik.mdl_js_react.mdl_slider;

import "package:react/react.dart" as react;
import "package:tekartik_mdl_js/mdl_js.dart" as mdl;
import "package:tekartik_mdl_js/mdl_classes.dart" as mdl;
import 'package:tekartik_utils/js_utils.dart';
import 'dart:html';

class _MdlSliderComponent extends react.Component {

  @override
  void componentDidMount(InputElement
                         rootNode) {
    print("upgrading slider ${rootNode} ${rootNode.parent}");
    mdl.componentHandler.upgradeElement(rootNode);

    rootNode.onChange.listen((Event e) {
      print(e.target.value);
      //props["value"] = e.target.value;
      rootNode.value = e.target.value;
      componentWillReceiveProps(props);

    });
  }

  @override
  render() {
    print('rendering slider');
    List classes = [mdl.slider, mdl.jsSlider];
    /*
    if (fab == true) {
      classes.add("mdl-button--fab");
    }
    if (raised == true) {
      classes.add("mdl-button--raised");
    }
    if (colored == true) {
      classes.add("mdl-button--colored");
    }
    */
    var button = react.input({"className": classes.join(' '),
      "type": "range",
      "min": props["min"],
      "max": props["max"],
/*
      "value": props["value"]
    */});
    //print(jsObjectToDebugString(button));
    return button;
  }

}

var _sliderComponent = react.registerComponent(() => new _MdlSliderComponent());

typedef MdlSliderType({num min, num max, num value});


MdlSliderType sliderComponent = ({num min: 0, num max: 100, num value: 0}) =>
_sliderComponent({"min": min, "max": max, "value": value});
