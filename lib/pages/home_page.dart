import 'package:flutter/material.dart';
import 'login_page.dart';

class HomePage extends StatelessWidget {
  late double deviceheight;
  late double devicewidth;
  @override
  Widget build(BuildContext context) {
    deviceheight = MediaQuery.of(context).size.height;
    devicewidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 58, 47, 43),
      body: Align(
        alignment: Alignment.center,
        child: Container(
          height: deviceheight * 0.58,
          width: devicewidth,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              _avatarWidget(),
              SizedBox(height: deviceheight * 0.02),
              _nameWidget(),
              SizedBox(height: deviceheight * 0.2),
              _logOutButton(context)
            ],
          ),
        ),
      ),
    );
  }

  Widget _avatarWidget() {
    double circleD = deviceheight * 0.25;
    return Container(
      height: circleD,
      width: circleD,
      decoration: BoxDecoration(
          color: const Color.fromARGB(121, 155, 133, 128),
          borderRadius: BorderRadius.circular(500),
          image: DecorationImage(
              image: AssetImage('assets/images/download.jpeg'))),
    );
  }

  Widget _nameWidget() {
    return Text(
      "HIMAYA JAWAD",
      style: TextStyle(
          color: const Color.fromARGB(255, 255, 218, 205),
          fontSize: 20,
          fontWeight: FontWeight.bold),
    );
  }

  Widget _logOutButton(BuildContext context) {
    return MaterialButton(
      minWidth: devicewidth * 0.38,
      height: deviceheight * 0.05,
      // highlightColor: Colors.amber,
      color: const Color.fromARGB(255, 171, 113, 14),
      child: Text(
        'LOG OUT ',
        style: TextStyle(
            color: const Color.fromARGB(255, 255, 236, 230),
            fontSize: 16,
            fontWeight: FontWeight.bold),
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(500),
      ),
      onPressed: () {
        Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => LoginPage(context),
            ));
      },
    );
  }
}
