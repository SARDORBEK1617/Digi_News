import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/pick.dart';
import 'package:untitled/signup.dart';
import 'package:untitled/welcome.dart';

import 'email.dart';

class Diginews extends StatelessWidget {
  const Diginews({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
         mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column( //mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children:  [
                const SizedBox(height: 40,),
                Image.asset("images/app_logo.png"),
                const SizedBox(height: 20,),
                const Text(
                  "Welcome To \nDigiNews",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 50,),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        new MaterialPageRoute(
                            builder: (BuildContext context) =>
                            new Email()));
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    height: 56,
                    width: double.infinity,
                    child: Row(
                      children: [
                        SizedBox(width: 20,),
                        Image.asset("images/sms.png"),
                        SizedBox(width: 100,),
                        const Text(
                          "Continue with Email",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 20,),
                InkWell(
                  // onTap: (){Navigator.push(
                  //     context,
                  //     new MaterialPageRoute(
                  //         builder: (BuildContext context) =>
                  //         new Pick()));},
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.blue[800],
                      borderRadius: BorderRadius.circular(10),
                    ),
                    height: 56,
                    width: double.infinity,
                    child: Row(
                      children: [
                        SizedBox(width: 20,),
                        Image.asset("images/Facebook.png"),
                        SizedBox(width: 90,),
                        const Text(
                          "Continue with Facebook",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                              fontWeight: FontWeight.bold
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 20,),
                InkWell(
                  onTap: () {
                    Navigator.push(
                            context,
                            new MaterialPageRoute(
                                builder: (BuildContext context) =>
                                new SignUp()));
                  },
                  child: Container(

                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.grey,
                       // width: 1, //                   <--- border width here
                      ),
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    height: 56,
                    width: double.infinity,
                    child: Row(
                      children: [
                        SizedBox(width: 20,),
                        Image.asset("images/Google_icon.png"),
                        SizedBox(width: 100,),
                        const Text(
                          "Continue with Google",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                              fontWeight: FontWeight.bold
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Already have an account?",
                      style: TextStyle(fontSize: 14, color: Colors.grey),
                    ),
                    InkWell(
                      onTap: (){
                        Navigator.push(
                            context,
                            new MaterialPageRoute(
                                builder: (BuildContext context) =>
                                new Welcome()));
                      },
                      child: Text(
                        "Login",
                        style: TextStyle(fontSize: 14, color: Colors.red),
                      ),
                    ),
                  ],
                ),
              ],
            ),

            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const[
                    Text(
                      "By continuing,you accept the ",
                      style: TextStyle(fontSize: 14, color: Colors.grey),
                    ),
                    Text(
                      "Terms of Use",
                      style: TextStyle(fontSize: 14,),
                    ),
                    Text(
                      "and",
                      style: TextStyle(fontSize: 14, color: Colors.grey),
                    ),

                  ],
                ),
                Text(
                  "\nPrivacy Policy",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 14, ),
                ),
              ],
            ),



          ],
        ),
      ),
    );
  }
}
