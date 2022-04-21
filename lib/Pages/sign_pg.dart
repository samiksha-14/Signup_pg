import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  TextEditingController _emailText = TextEditingController();
  TextEditingController _passwordtext = TextEditingController();
  TextEditingController _userName = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Stack(
        children: [
          //TO display upload picture icon
          //this is yellow container
          Stack(
            children: [
              Container(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.10,
                    left: MediaQuery.of(context).size.width * 0.29),
                child: const Text(
                  "Sign up",
                  style: TextStyle(
                      shadows: [
                        Shadow(
                          blurRadius: 4.0,
                          color: Color.fromARGB(255, 22, 30, 35),
                          offset: Offset(1.5, 1.5),
                        ),
                      ],
                      fontSize: 42.0,
                      fontWeight: FontWeight.w100,
                      color: Color.fromARGB(255, 80, 30, 17)),
                ),
              ),
              Container(
                  child: Center(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: const [
                          BoxShadow(
                              color: Colors.grey,
                              blurRadius: 4,
                              spreadRadius: 1,
                              offset: Offset(4, 4)),
                        ],
                        gradient: const LinearGradient(
                          colors: [
                            Color.fromARGB(255, 233, 175, 16),
                            Color.fromARGB(218, 236, 204, 96)
                          ],
                          begin: Alignment.bottomLeft,
                          end: Alignment
                              .topRight, // repeats the gradient over the canvas
                        ),
                      ),
                      height: 487.0,
                      width: 320.0,
                    ),
                  ),
                  padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.2,
                  )),
              Container(
                  padding: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height * 0.82,
                      left: MediaQuery.of(context).size.width * 0.2),
                  child: SignInButton(
                    Buttons.Google,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    text: "Sign up with Google",
                    onPressed: () {},
                  )),
              Container(
                  padding: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height * 0.75,
                      left: 80.0),
                  child: RichText(
                    text: const TextSpan(
                      // Note: Styles for TextSpans must be explicitly defined.
                      // Child text spans will inherit styles from parent
                      style: TextStyle(
                        fontSize: 13.5,
                        color: Colors.black,
                      ),
                      children: <TextSpan>[
                        TextSpan(text: 'Already have an account ?'),
                        TextSpan(
                            text: '  Login',
                            style: TextStyle(fontWeight: FontWeight.bold)),
                      ],
                    ),
                  )),
              Container(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.68, left: 59.0),
                child: MaterialButton(
                  minWidth: 240,
                  height: 40,
                  onPressed: () {
                    var _email = _emailText.text;
                    var _pass = _passwordtext.text;
                    var _usern = _userName;
                  },
                  color: const Color.fromARGB(255, 202, 107, 63),
                  shape: RoundedRectangleBorder(
                      side: const BorderSide(
                        color: Colors.transparent,
                      ),
                      borderRadius: BorderRadius.circular(40)),
                  child: const Text(
                    "Sign Up",
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                        color: Colors.white70),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.27,
                    left: 47.0,
                    right: 40),
                child: TextField(
                  controller: _userName,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(28.0)),
                    ),
                    labelText: 'User Name',
                  ),
                ),
              ),
              Padding(
                  padding: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height * 0.37,
                      left: 47.0,
                      right: 40),
                  child: TextField(
                    controller: _emailText,
                    obscureText: true,
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(28.0)),
                        ),
                        labelText: 'E-mail',
                        hintText: 'Enter your secure email'),
                  )),
              Padding(
                  padding: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height * 0.47,
                      left: 47.0,
                      right: 40),
                  child: TextField(
                    controller: _passwordtext,
                    obscureText: true,
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(28.0)),
                        ),
                        labelText: 'Password',
                        hintText: 'Enter your secure password'),
                  )),
              Padding(
                  padding: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height * 0.57,
                      left: 47.0,
                      right: 40),
                  child: const TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(28.0)),
                        ),
                        labelText: 'Confirm Password',
                        hintText: 'Password'),
                  )),
            ],
          ),
        ],
      ),
    ));
  }
}
