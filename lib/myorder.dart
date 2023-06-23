import 'package:flutter/material.dart';

class Myorder extends StatefulWidget {
  const Myorder({ Key? key }) : super(key: key);

  @override
  _MyorderState createState() => _MyorderState();
}

class _MyorderState extends State<Myorder> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
          title: const Text('My Orders', textAlign: TextAlign.center, style: TextStyle(color: Colors.white),),
          centerTitle: true,
          backgroundColor: const Color(0xffA80025),
          elevation: 0,
        ),
        body: SingleChildScrollView(
          child: Padding(padding: const EdgeInsets.all(10),
            child: Column(
              children: [
                Container(
                  height: 150,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10), 
                    color: const Color(0xffA80025),
                  ),
                  child: Row(
                    children: [
                      ClipRRect(
                        borderRadius: const BorderRadius.all(Radius.circular(10)),
                        child: Image.asset(
                          'assets/images/t0.jpg',
                          fit: BoxFit.cover,
                          width: 150,
                          height: 150,
                        ),
                      ),
                      const SizedBox(width: 5,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          SizedBox(height: 5,),
                          Text('Optimum Nitrition 100% Whey', style: TextStyle(fontSize: 15, color: Colors.white)),
                          Text('Protein Powder 5Lbs - On Gold', style: TextStyle(fontSize: 15, color: Colors.white)),
                          Text('Standard Muscle', style: TextStyle(fontSize: 15, color: Colors.white)),
                          Text('₱3,959', style: TextStyle(fontSize: 18, color: Colors.white, fontWeight: FontWeight.bold),),
                          Text('1 item', style: TextStyle(fontSize: 14, color: Colors.white),),
                          SizedBox(height: 9,),
                          Text('Parcel is out for delivery', style: TextStyle(fontSize: 14, color: Colors.white),),
                        ],
                      )
                    ],
                  )
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}