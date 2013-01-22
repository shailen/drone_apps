import "package:unittest/unittest.dart";
import 'package:unittest/html_enhanced_config.dart';
import 'package:htmlEnhancedConfig/htmlEnhancedConfig.dart';
import 'dart:html';

void main () {
  useHtmlEnhancedConfiguration();

  test('click me', (){
    // create DOM element; attach event
    addClickMe("Some text!!!");
   
    // simulate click
    var el = query("#text");
    el.click();
    
    // test
    expect(el.innerHtml, equals('!!!txet emoS'));
  });
}