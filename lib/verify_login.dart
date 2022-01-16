import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Verify_login extends StatefulWidget {
  const Verify_login({Key? key}) : super(key: key);

  @override
  _Verify_loginState createState() => _Verify_loginState();
}

class _Verify_loginState extends State<Verify_login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 30,
                ),
                Text(
                  "Verify Login!",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: const[
                    Text(
                      "Enter OTP Code send to sardormamadaliev618@gmail.com "
                      "\nThis code will expired in ",
                      style: TextStyle(fontSize: 14, color: Colors.grey),
                    ),
                    Text(
                      "01:30",
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Colors.red
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 150.0,
                      width: 150.0,
                      padding: EdgeInsets.all(10.0),
                      decoration: ShapeDecoration(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20.0)),
                          // borderWidth: 10.0,
                        ),
                        // side: new BorderSide(color: Colors.white)
                      ),
                      child: Center(
                        child: TextField(
                          decoration: InputDecoration(),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Container(
                      height: 150.0,
                      width: 150.0,
                      padding: EdgeInsets.all(10.0),
                      decoration: ShapeDecoration(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20.0)),
                          // borderWidth: 10.0,
                        ),
                        // side: new BorderSide(color: Colors.white)
                      ),
                      child: Center(
                        child: TextField(
                          decoration: InputDecoration(),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Container(
                      height: 150.0,
                      width: 150.0,
                      padding: EdgeInsets.all(10.0),
                      decoration: ShapeDecoration(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20.0)),
                          // borderWidth: 10.0,
                        ),
                        // side: new BorderSide(color: Colors.white)
                      ),
                      child: Center(
                        child: TextField(
                          decoration: InputDecoration(),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Container(
                      height: 150.0,
                      width: 150.0,
                      padding: EdgeInsets.all(10.0),
                      decoration: ShapeDecoration(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20.0)),
                          // borderWidth: 10.0,
                        ),
                        // side: new BorderSide(color: Colors.white)
                      ),
                      child: Center(
                        child: TextField(
                          decoration: InputDecoration(),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                //controller: TextEditingController(text: "Email",)),
              ],
            ),
            // SizedBox(
            //   height: 10,
            // ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Didn't received the code?",
                  style: TextStyle(fontSize: 14, color: Colors.grey),
                ),
                Text(
                  "Resend Code",
                  style: TextStyle(fontSize: 14, color: Colors.red),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
