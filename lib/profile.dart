import 'package:flutter/material.dart';
import 'package:g_freak_supplements/home.dart';
import 'package:g_freak_supplements/myorder.dart';

class Profile extends StatefulWidget {
  const Profile({ Key? key }) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(scaffoldBackgroundColor: const Color(0xffF8F8F8)),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color(0xffA80025),
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(Icons.arrow_back, color: Colors.white,),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          title: const Text('Profile', textAlign: TextAlign.center, style: TextStyle(color: Colors.white),),
          centerTitle: true,
          backgroundColor: const Color(0xffA80025),
          elevation: 0,
          actions: [
            IconButton(
              icon: const Icon(Icons.home, color: Colors.white,),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => const Home()));
              },
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                const SizedBox(height: 10,),
                ClipOval(
                  child: Image.asset(
                    'assets/images/anya.png',
                    height: 150,
                    width: 150,
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(height: 50,),
                Container(
                  width: double.infinity,
                  height: 25,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.white,
                      width: 1.0,
                    ),
                  ),
                  child: const Center(
                    child: Text(
                      'Christopher Sison',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 30,),
                Container(
                  width: double.infinity,
                  height: 100,
                  color: Colors.black.withOpacity(0.2),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(width: 160,
                      child: Column(
                        children: const [
                          SizedBox(height: 10,),
                          Text('Username', style: TextStyle(fontSize: 15, color: Colors.white),),
                          SizedBox(height: 15,),
                          Text('Christopher', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white),),
                        ],
                      ),
                      ),
                      const SizedBox(width: 20,),
                      Container(width: 5, height: double.infinity, color: const Color(0xffA80025),),
                      const SizedBox(width: 20,),
                      SizedBox(width: 160, 
                      child: Column(
                        children: const [
                          SizedBox(height: 10,),
                          Text('Email Address', style: TextStyle(fontSize: 15, color: Colors.white),),
                          SizedBox(height: 15,),
                          Text('shesh@gmail.com', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white),),
                        ],
                      ),),
                      
                    ],
                  )
                ),
                const SizedBox(height: 5,),
                Container(
                  width: double.infinity,
                  height: 100,
                  color: Colors.black.withOpacity(0.2),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(width: 160,
                      child: Column(
                        children: const [
                          SizedBox(height: 10,),
                          Text('Phone Number', style: TextStyle(fontSize: 15, color: Colors.white),),
                          SizedBox(height: 15,),
                          Text('09375467891', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white),),
                        ],
                      ),
                      ),
                      const SizedBox(width: 20,),
                      Container(width: 5, height: double.infinity, color: const Color(0xffA80025),),
                      const SizedBox(width: 20,),
                      SizedBox(width: 160, 
                      child: Column(
                        children: const [
                          SizedBox(height: 10,),
                          Text('Birthday', style: TextStyle(fontSize: 15, color: Colors.white),),
                          SizedBox(height: 15,),
                          Text('January 30, 2001', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white),),
                        ],
                      ),),
                    ],
                  )
                ),
                const SizedBox(height: 20,),
                Container(
                  height: 50,
                  color: Colors.black.withOpacity(0.2),
                  child: Row(
                    children: [
                      const SizedBox(width: 10,),
                      const Icon(Icons.location_on, size: 30, color:Colors.white,),
                      const SizedBox(width: 10,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          SizedBox(height: 5,),
                          Text('Address', style: TextStyle(fontSize: 12, color: Colors.white),),
                          Text('123 Pugaro, Manaoag, Pangasinan', style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.white),),
                        ],
                      ),
                      const SizedBox(width: 20,),
                      const Icon(Icons.arrow_right, size: 30, color: Colors.white,),
                    ],
                  ),
                ),

                const SizedBox(height: 20,),
                SizedBox(
                  width: double.infinity,
                  height: 45,
                  child: ElevatedButton(
                    onPressed: () { Navigator.push(context, MaterialPageRoute(builder: (context) => const Myorder())); },
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                          side: const BorderSide(color: Colors.white, width: 1.0),
                        ),
                      ),
                      backgroundColor: const MaterialStatePropertyAll(Colors.transparent)
                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'My Orders',
                        style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold, color: Colors.white),
                      ),
                    ),
                  ),
                ),


                const SizedBox(height: 20,),
              ],
            ),
          ),
        ),
      ),
      
    );
  }
}