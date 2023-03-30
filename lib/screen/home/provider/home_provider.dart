import 'package:flutter/cupertino.dart';
import 'package:webview_flutter/webview_flutter.dart';

class Homeprovider extends ChangeNotifier{
  WebViewController? webviewController;
  List link=[
    "https://www.flipkart.com/",
    "https://www.amazon.in/",
    "https://www.youtube.com/",
    "https://play.google.com/",
    "https://www.facebook.com/",
    "https://zoom.us/",
    "https://twitter.com/",
  ];
  List logoList = [
    "asetss/images/1.png",
    "asetss/images/2.png",
    "asetss/images/3.png",
    "asetss/images/4.png",
    "asetss/images/5.png",
    "asetss/images/6.png",
    "asetss/images/7.jpg"
  ];
  void initController(int index){
    webviewController = WebViewController();
    webviewController!.loadRequest(Uri.parse("${link[index]}"),);
  }
}