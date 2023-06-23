import 'package:flutter/material.dart';
import 'package:g_freak_supplements/forgot.dart';
import 'package:g_freak_supplements/home.dart';
import 'package:g_freak_supplements/register.dart';

class Login extends StatefulWidget {
  const Login({ Key? key }) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor:const Color(0xffA80025),
        body: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset('assets/images/Logo.png', width: 292, height: 114,),
                const SizedBox(height: 50,),
                TextField(
                  decoration: InputDecoration(
                    hintText: 'Email',
                    hintStyle: const TextStyle(color: Colors.white),
                    prefixIcon: const Icon(Icons.mail, color: Color(0xff7E001C)),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(
                        color: Colors.white,
                        width: 1.0,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(
                        color: Colors.white,
                        width: 2.0,
                      ),
                    ),
                  ),
                  style: const TextStyle(color: Colors.white),
                ),

                const SizedBox(height: 10,),
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: 'Password',
                    hintStyle: const TextStyle(color: Colors.white),
                    prefixIcon: const Icon(Icons.lock, color: Color(0xff7E001C),),
                    suffixIcon: const Icon(Icons.remove_red_eye, color: Color(0xff7E001C),),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(
                        color: Colors.white,
                        width: 1.0,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(
                        color: Colors.white,
                        width: 2.0,
                      ),
                    ),
                  ),
                  style: const TextStyle(color: Colors.white),
                ),
                Container(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    style: TextButton.styleFrom(
                      foregroundColor: Colors.white
                    ),
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const Forgot()));
                    },
                    child: const Text('Forgot Password?'),
                  ),
                ),
                ElevatedButton(
                  onPressed: () { Navigator.push(context, MaterialPageRoute(builder: (context) => const Home())); },
                  style: ElevatedButton.styleFrom(
                    elevation: 0, backgroundColor: Colors.transparent,
                    textStyle: const TextStyle(fontSize: 20),
                    side: const BorderSide(color: Colors.white, width: 1.0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.only(left: 40, right: 40, top: 15, bottom: 15),
                    child: Text(
                      'Login',
                      style: TextStyle(fontSize: 18.0),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('New User?', style: TextStyle(fontSize: 15, color: Colors.white),),
                    TextButton(
                      style: TextButton.styleFrom(
                        textStyle: const TextStyle(fontSize: 15),
                        foregroundColor: Colors.black
                      ),
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const Register()));
                      },
                      child: const Text('Sign Up', style: TextStyle(fontSize: 15, color: Colors.white, fontWeight: FontWeight.bold),),
                    ),
                  ],
                ),


                const SizedBox(height: 50,),
              ],
            ),
          ),
        )
      ),
    );
  }
}