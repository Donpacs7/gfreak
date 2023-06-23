import 'package:flutter/material.dart';
import 'package:g_freak_supplements/cart.dart';
import 'package:g_freak_supplements/checkout.dart';

class Details extends StatefulWidget {
  const Details({ Key? key }) : super(key: key);

  @override
  _DetailsState createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
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
          backgroundColor: const Color(0xffA80025),
          elevation: 0,
        ),
        body: Padding(
          padding: const EdgeInsets.only(left: 0, right: 0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    'assets/images/p4.jpg',
                    width: 250,
                    height: 250,
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(height: 20,),
                Container(
                  alignment: Alignment.centerLeft,
                  width: double.infinity,
                  height: 400,
                  child: Padding(padding: EdgeInsets.only(left: 10, right: 5),
                    child: Column(
                      children: [
                        Container(
                          alignment: Alignment.centerLeft,
                          child: const Text('Optimum Nitrition 100% Whey Protein Powder 5Lbs - On Gold Standard Muscle', style: TextStyle(fontSize: 20, color: Colors.white),),
                        ),
                        const SizedBox(height: 10,),
                        Container(
                          alignment: Alignment.centerLeft,
                          child: const Text('₱3,959', style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),),
                        ),
                        const SizedBox(height: 20,),
                        Container(
                          alignment: Alignment.centerLeft,
                          child: const Text('● no artificial flavors, sweeteners, or colors \n● whey isolates are the primary protein source \n● higher pure protein percentage \n● provides whey protein microfractions \n● more than 5 grams of BCAAs \n● over 4 grams of glutamine & glutamic acid \n● instantized mix with a spoon', style: TextStyle(fontSize: 15, color: Colors.white),),
                        ),
                      ],
                  ),
                  )
                )

              ],
            ),
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
          floatingActionButton: Container(
            height: 80,
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  width: 160,
                  child: OutlinedButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const Cart()));
                    },
                    style: OutlinedButton.styleFrom(
                      side: const BorderSide(color: Colors.white),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: const Text(
                      'Add to cart',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                SizedBox(
                  width: 160,
                  child: OutlinedButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const Checkout()));
                    },
                    style: OutlinedButton.styleFrom(
                      side: const BorderSide(color: Colors.white),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: const Text(
                      'Buy now',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
          ),


      ),

    );
  }
}