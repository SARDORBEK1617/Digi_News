import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/pick.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
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
                  "Sign Up",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "If only takes a minute to create your account",
                  style: TextStyle(fontSize: 14, color: Colors.grey),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Name",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10,
                ),
                TextField(
                  decoration: InputDecoration(
                    hintText: "Your name",
                    border: OutlineInputBorder(),
                  ),
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
                TextField(
                  controller: _controller,
                  onSubmitted: (String value) {},
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

                //controller: TextEditingController(text: "Email",)),
              ],
            ),
            SizedBox(
              height: 70,
            ),
            InkWell(
              onTap: () => Pick(),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(10),
                ),
                height: 56,
                width: double.infinity,
                child: const Text(
                  "Create account",
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
                  "Already registered?",
                  style: TextStyle(fontSize: 14, color: Colors.grey),
                ),
                Text(
                  "Login",
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
