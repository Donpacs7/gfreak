import 'package:flutter/material.dart';
import 'package:g_freak_supplements/login.dart';

class Forgot extends StatefulWidget {
  const Forgot({ Key? key }) : super(key: key);

  @override
  _ForgotState createState() => _ForgotState();
}

class _ForgotState extends State<Forgot> {
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
                const Text('Register Account', style: TextStyle(fontSize: 23, color: Colors.white),),
                const SizedBox(height: 5,),
                const Text('Enter your registered email below to', style: TextStyle(color: Colors.white),),
                const Text('recieved a link to reset your password', style: TextStyle(color: Colors.white),),
                const SizedBox(height: 20,),
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

                const SizedBox(height: 20,),
                ElevatedButton(
                  onPressed: () { Navigator.push(context, MaterialPageRoute(builder: (context) => const Login())); },
                  style: ElevatedButton.styleFrom(
                    elevation: 0, 
                    backgroundColor: Colors.transparent,
                    textStyle: const TextStyle(fontSize: 20),
                    side: const BorderSide(color: Colors.white, width: 1.0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.only(left: 20, right: 20, top: 15, bottom: 15),
                    child: Text(
                      'Continue',
                      style: TextStyle(fontSize: 18.0),
                    ),
                  ),
                ),
                const SizedBox(height: 80,),
              ],
            ),
          ),
        )
      ),
    );
  }
}