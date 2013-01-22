library htmlEnhancedConfig;
import 'dart:html';

void reverseText(Event event) {
  var text = query("#text").text;
  var buffer = new StringBuffer();
  for (int i = text.length - 1; i >= 0; i--) {
    buffer.add(text[i]);
  }
  query("#text").text = buffer.toString();
}

void addClickMe(text) {
  document.body.append(
      new Element.html('<div id="container"><p id="text"></p></div>')
    );
  query("#text")
  ..text = text
  ..on.click.add(reverseText);
}