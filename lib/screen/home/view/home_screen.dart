import 'package:flutter/material.dart';
import 'package:olin_one_app/screen/home/provider/home_provider.dart';
import 'package:provider/provider.dart';

class homescreen extends StatefulWidget {
  const homescreen({Key? key}) : super(key: key);

  @override
  State<homescreen> createState() => _homescreenState();
}

class _homescreenState extends State<homescreen> {
  Homeprovider? Homeprovidertrue;
  Homeprovider? Homeproviderfalse;

  @override
  Widget build(BuildContext context) {
    Homeprovidertrue = Provider.of<Homeprovider>(context, listen: true);
    Homeproviderfalse = Provider.of<Homeprovider>(context, listen: false);

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.indigo,
          title: Text("shopping App"),
        ),
        backgroundColor: Colors.black,
        body: GridView.builder(
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          itemCount: Homeproviderfalse!.logoList.length,
          itemBuilder: (context, index) {
            return InkWell(
              onTap: () {
                Navigator.pushNamed(context, 'app_screen');
                Homeprovidertrue!.initController(index);
              },
              child: Padding(
                padding: const EdgeInsets.all(50.0),
                child: Container(
                  height: 1000,
                  width: 100,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white),
                  child: Image.asset(Homeprovidertrue!.logoList[index]),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
