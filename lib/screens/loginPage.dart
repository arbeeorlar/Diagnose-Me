import 'dart:async';

import 'package:email_validator/email_validator.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:self_diagnose/components/ProgressDialog.dart';
import 'package:self_diagnose/components/core/themes/AppColors.dart';
import 'package:self_diagnose/screens/Home/homePage.dart';
import 'package:self_diagnose/screens/resetPassword.dart';
import 'package:self_diagnose/screens/signupPage.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String _email, _password ="";
  final auth = FirebaseAuth.instance;

  // final _formKey = GlobalKey<FormState>();
  // FocusNode _usernameFocusNode = FocusNode();
  // FocusNode _emailFocusNode = FocusNode();
  // FocusNode _passwordFocusNode = FocusNode();

  // moveToDashboard() {
  //   Navigator.of(context).push(MaterialPageRoute(
  //       builder: (context) =>
  //           HomeScreen()));
  // }

  @override
  Widget build(BuildContext context) {
    return new WillPopScope(
        onWillPop: () async => false,
      child: Scaffold(
      body: Form(
         // key: _formKey,
        child: Stack(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('Assets/images/home.jpeg'),
                      fit: BoxFit.cover)),
            ),
            Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [
                    Colors.transparent,
                    Colors.transparent,
                    Color(0xff161d27).withOpacity(0.9),
                    Color(0xff161d27),
                  ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Text(
                    "Welcome!",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 38,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Let's Sign in",
                    style: TextStyle(
                        color: AppColors.primary,
                        fontSize: 14,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 50,
                    margin: EdgeInsets.only(left: 40, right: 40),
                    child: TextFormField(
                        // focusNode: _usernameFocusNode,
                        autofocus: true,
                        textCapitalization: TextCapitalization.words,
                        // keyboardType: TextInputType.text ,
                        style: TextStyle(fontSize: 16, color: Colors.white),
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          hintText: "Email",
                          hintStyle: TextStyle(color: Colors.grey.shade700),
                          filled: true,
                          fillColor: Color(0xff161d27).withOpacity(0.9),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide: BorderSide(color: AppColors.primary)),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide: BorderSide(color: AppColors.primary)),
                         ),
                     //  textInputAction: TextInputAction.next,
                     // validator: (email)=>EmailValidator.validate(email)? null:"Invalid email address",
                     //  // onSaved: (email2)=> _email1 = email2,
                      onChanged: (value) {
                          // if(EmailValidator.validate(value)){
                          //
                          // }
                        setState(() {
                          _email = value.trim();
                        });
                      },
                      // onFieldSubmitted: (_){
                      //   fieldFocusChange(context, _emailFocusNode, _passwordFocusNode);
                      //
                      // },
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Container(
                    height: 50,
                    margin: EdgeInsets.only(left: 40, right: 40),
                    child: TextFormField(
                      obscureText: true,
                      style: TextStyle(fontSize: 16, color: Colors.white),
                      decoration: InputDecoration(
                        hintText: "Password",
                        hintStyle: TextStyle(color: Colors.grey.shade700),
                        filled: true,
                        fillColor: Color(0xff161d27).withOpacity(0.9),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: BorderSide(color: AppColors.primary)),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: BorderSide(color: AppColors.primary)),
                      ),
                      // textInputAction: TextInputAction.done,
                      //
                      // validator: (password){
                      //   Pattern pattern =
                      //       r'^(?=.*[0-9]+.*)(?=.*[a-zA-Z]+.*)[0-9a-zA-Z]{6,}$';
                      //   RegExp regex = new RegExp(pattern);
                      //   if (!regex.hasMatch(password))
                      //     return 'Invalid password';
                      //   else
                      //     return null;
                      // },
                      // onSaved: (password2)=> _password1 = password2,
                      onChanged: (value) {
                        setState(() {
                          _password = value.trim();
                        });
                      },
                    ),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      new FlatButton(
                        child: new Text(
                          "Forget Password?",
                          style: TextStyle(
                              color: AppColors.primary,
                              fontSize: 14,
                              fontWeight: FontWeight.bold),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => ResetScreen()),
                          );
                        },
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 50,
                    width: double.infinity,
                    margin: EdgeInsets.only(left: 40, right: 40),
                    child: FlatButton(
                      onPressed: () {
                        showLoading(context);
                        // if(_formKey.currentState.validate()){
                        // _formKey.currentState.save();
                        Timer timerM =  new Timer.periodic(new Duration(seconds: 5), (time) {
                        // toastMessage("Username: $_username\nEmail: $_email\nPassword: $_password");
                        auth.signInWithEmailAndPassword(email: _email, password: _password).then((_) {
                          Navigator.of(context).pushReplacement(
                              MaterialPageRoute(
                                  builder: (context) => HomeScreen()));
                          time.cancel();
                          });
                        });
                      },
                      // },
                      // onPressed: () {
                      //   Navigator.push(
                      //       context,
                      //       MaterialPageRoute(
                      //           builder: (context) =>HomeScreen()));
                      // },
                      color: AppColors.primary,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Text(
                        "SIGN IN",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 16),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "It's your first time here?",
                        style: TextStyle(color: Colors.white),
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => SignupPage()));
                        },
                        child: Text(
                          "Sign up",
                          style: TextStyle(
                              color: AppColors.primary,
                              fontWeight: FontWeight.bold),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    )

    );

  }
  void fieldFocusChange(BuildContext context, FocusNode currentFocus,FocusNode nextFocus) {
    currentFocus.unfocus();
    FocusScope.of(context).requestFocus(nextFocus);
  }
  void showLoading(BuildContext context,
      {bool close = false, String message = "Please wait..."}) {
    if (close) {
      Navigator.of(context, rootNavigator: true).pop();
    } else {
      SuccessDialog.show(
        context,
        WillPopScope(
          onWillPop: () async => false,
          child: DialogLoading(
            subtitle: Container(
              child: Text(
                message,
                style: TextStyle(
                    fontSize: 12,
                    color: Colors.black
                ),
              ),
            ),
          ),
        ),
        barrierDismissible: false,
      );
    }
  }
}