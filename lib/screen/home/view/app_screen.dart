import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:webview_flutter/webview_flutter.dart';
import '../provider/home_provider.dart';

class App_screen extends StatefulWidget {
  const App_screen({Key? key}) : super(key: key);

  @override
  State<App_screen> createState() => _App_screenState();
}

class _App_screenState extends State<App_screen> {
  Homeprovider? Homeprovidertrue;
  Homeprovider? Homeproviderfalse;
  @override
  Widget build(BuildContext context) {
    Homeprovidertrue = Provider.of<Homeprovider>(context,listen:true);
    Homeproviderfalse = Provider.of<Homeprovider>(context,listen: false);
    return SafeArea(
      child: Scaffold(
        body: WebViewWidget(controller: Homeprovidertrue!.webviewController!,
        ),
      ),
    );
  }
}
