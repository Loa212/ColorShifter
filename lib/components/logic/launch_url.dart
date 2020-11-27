import 'dart:js' as js;

void launchURL(url) {
  js.context.callMethod('open', [url]);
}
