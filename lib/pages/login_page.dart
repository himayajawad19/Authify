import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  late double deviceheight;
  late double devicewidth;
  Color primaryColor = Color.fromRGBO(211, 161, 125, 1);

  @override
  Widget build(BuildContext context) {
    deviceheight = MediaQuery.of(context).size.height;
    devicewidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: primaryColor,
      body: Align(
        alignment: Alignment.center,
        child: Container(
          height: deviceheight * 0.68,
          width: devicewidth,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              _avatarWidget(),
              SizedBox(height: deviceheight * 0.05),
              _emailTextFeildWidget(),
              SizedBox(height: deviceheight * 0.025),
              _passwordTextFeildWidget(),
              SizedBox(height: deviceheight * 0.1),
              _LoginButton()
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

  Widget _emailTextFeildWidget() {
    return Container(
      width: devicewidth * 0.75,
      child: TextField(
        cursorColor: Colors.white,
        autocorrect: false,
        style: TextStyle(
          color: Colors.white,
          // fontSize: deviceheight * 0.02,
        ),
        decoration: InputDecoration(
            hintText: 'Alina@gmail.com',
            hintStyle: TextStyle(color: Colors.white),
            enabledBorder:
                OutlineInputBorder(borderSide: BorderSide(color: Colors.white)),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.white))),
      ),
    );
  }

  Widget _passwordTextFeildWidget() {
    return Container(
      width: devicewidth * 0.75,
      child: TextField(
        cursorColor: Colors.white,
        autocorrect: false,
        style: TextStyle(
          color: Colors.white,
          // fontSize: deviceheight * 0.02,
        ),
        obscureText: true,
        decoration: InputDecoration(
            hintText: 'Password',
            hintStyle: TextStyle(color: Colors.white),
            enabledBorder:
                OutlineInputBorder(borderSide: BorderSide(color: Colors.white)),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.white))),
      ),
    );
  }

  Widget _LoginButton() {
    return MaterialButton(
      minWidth: devicewidth * 0.38,
      height: deviceheight * 0.05,
      // highlightColor: Colors.amber,
      color: const Color.fromARGB(255, 171, 113, 14),
      child: Text(
        'LOGIN ',
        style: TextStyle(
            color: const Color.fromARGB(255, 255, 236, 230),
            fontSize: 16,
            fontWeight: FontWeight.bold),
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(500),
      ),
      onPressed: () {},
    );
  }
}
