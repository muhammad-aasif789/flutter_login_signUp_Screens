import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_login_signup_screens/screens/login.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple,
      appBar: AppBar(
          elevation: 0.4,
          backgroundColor: Colors.purple,
          title:  Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Text("Sign Up",style: TextStyle(
                fontSize: 30,fontWeight: FontWeight.bold,fontStyle: FontStyle.italic
            ),),
          ),
      ),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              color: Colors.white,
            ),
            Container(
              height: 650,
              decoration: BoxDecoration(
                  color: Colors.purple,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(70),
                      bottomRight: Radius.circular(70))
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 118.0),
              child: Container(
                height: 420,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(20))
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 13.0,right: 13.0,top: 47.0),

                      child: Column(
                        children: [
                          TextField(
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'User Name',
                              hintText: 'Enter Your Name',
                            ),
                          ),
                          SizedBox(height: 20,),
                          TextField(
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'Email Address',
                              hintText: 'Enter Your Email Address',
                            ),
                          ),
                          SizedBox(height: 20,),
                          TextField(
                            obscureText: true,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'Password',
                              hintText: 'Enter Password',
                            ),
                          ),
                          SizedBox(height: 20,),
                          Container(
                            decoration: BoxDecoration(
                                color: Colors.blue,
                                borderRadius: BorderRadius.all(Radius.circular(10))
                            ),
                            child: TextButton(onPressed: (){},
                                child:Text("Sign Up",style: TextStyle(fontSize: 30,color: Colors.white),)),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            Positioned(
              left: 150,
              child:CircleAvatar(
                  radius: 58,
                  backgroundImage:NetworkImage("https://png.pngtree.com/png-vector/20190710/ourmid/pngtree-user-vector-avatar-png-image_1541962.jpg",)
              ),
            ),
          ],
        ),
      ),
    );
  }
}
