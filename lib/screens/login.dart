import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_login_signup_screens/screens/signup.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    backgroundColor: Colors.purple,
      appBar: AppBar(
        elevation: 0.4,
        backgroundColor: Colors.purple,
        title:  Padding(
          padding: const EdgeInsets.only(left: 25.0,top: 10),
          child: Text("Login",style: TextStyle(
            fontSize: 30,fontWeight: FontWeight.bold,fontStyle: FontStyle.italic
          ),),
        )),
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
                      padding: const EdgeInsets.only(left: 13.0,right: 13.0,top: 27.0),

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
                                child:Text("Login",style: TextStyle(fontSize: 30,color: Colors.white),)),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 110.0),
                            child: Row(
                              children: [
                                Text("Don't have account ?"),
                                TextButton(onPressed: (){
                                  Navigator.push(context,MaterialPageRoute(builder: (context)=>SignUpScreen()));
                                }, child: Text("SignUp",style: TextStyle(
                                  fontSize: 20
                                ),))
                              ],
                            ),
                          ),
                    Divider(thickness: 2,color: Colors.grey,),
                          SizedBox(height: 15.0,),
                          Text("OR Login With",style: TextStyle(fontSize: 23,color: Colors.blue),),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              IconButton(onPressed: (){}, icon:Icon(Icons.mail_rounded,size: 60,color: Colors.deepOrange,)),
                              Container(
                                  margin: EdgeInsets.only(left: 19.0),
                                  child: IconButton(onPressed: (){}, icon:Icon(Icons.facebook,size: 60,color: Colors.blue,))),

                            ],
                          )
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
