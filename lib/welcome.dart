import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/phone.dart';
import 'package:untitled/verify_login.dart';

class Welcome extends StatefulWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  _WelcomeState createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  final _controller = TextEditingController();
  bool isPassVisible = true;
  final formKey = GlobalKey<FormState>();
  final String myError = "Xatolik";
  String email = "";
  String password = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 30,
                ),
                Text(
                  "Welcome back!",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Enter your email address and password to login",
                  style: TextStyle(fontSize: 14, color: Colors.grey),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Email",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  decoration: InputDecoration(
                    hintText: "Your email address",
                    border: OutlineInputBorder(),
                  ),
                  validator: (value) {
                    if (!value!.contains("@")) return "Nimadur xato";
                  },
                  onSaved: (value) {
                    email = value!;
                  },
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Password",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  validator: (value) {
                    if (value!.length < 6) return "Nimadir xato";
                  },
                  controller: _controller,
                  // onSubmitted: (String value) {},
                  textInputAction: TextInputAction.done,
                  obscureText: isPassVisible,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Your password",
                    suffixIcon: IconButton(
                      icon: isPassVisible
                          ? Icon(Icons.visibility)
                          : Icon(Icons.visibility_off),
                      onPressed: () {
                        setState(() {
                          isPassVisible = !isPassVisible;
                        });
                      },
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            new MaterialPageRoute(
                                builder: (BuildContext context) =>
                                new Phone()));
                      },
                      child: Text(
                        "Forgot Password",
                        style: TextStyle(fontSize: 14, color: Colors.red),
                      ),
                    ),
                  ],
                ),
                //controller: TextEditingController(text: "Email",)),
              ],
            ),
            SizedBox(
              height: 70,
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    new MaterialPageRoute(
                        builder: (BuildContext context) =>
                        new Verify_login()));
              },
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(10),
                ),
                height: 56,
                width: double.infinity,
                child: const Text(
                  "Login",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Don't have an account?",
                  style: TextStyle(fontSize: 14, color: Colors.grey),
                ),
                Text(
                  "Sign Up",
                  style: TextStyle(fontSize: 14, color: Colors.red),
                ),
              ],
            ),
            // Container(
            //   decoration: BoxDecoration(color: Colors.deepPurple,
            //     borderRadius: BorderRadius.circular(20),
            //   ),
            //   height: 56,
            //   width: double.infinity,
            //   child: const Text("Continue",textAlign: TextAlign.center,style: TextStyle( fontSize: 30,),),
            // ),
          ],
        ),
      ),
    );
  }
}
