import 'package:flutter/material.dart';
import 'package:g_freak_supplements/checkout.dart';

class Cart extends StatefulWidget {
  const Cart({ Key? key }) : super(key: key);

  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {
  int _count = 0;
  final TextEditingController _countController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _countController.text = _count.toString();
  }

  @override
  void dispose() {
    _countController.dispose();
    super.dispose();
  }

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
          title: const Text('Your Cart', textAlign: TextAlign.center, style: TextStyle(color: Colors.white),),
          centerTitle: true,
          backgroundColor: const Color(0xffA80025),
          elevation: 0,
        ),
        body: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 150,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10), 
                        color: Colors.transparent,
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
                            children: [
                              const SizedBox(height: 5,),
                              const Text('Optimum Nitrition 100% Whey', style: TextStyle(fontSize: 15, color: Colors.white)),
                              const Text('Protein Powder 5Lbs - On Gold', style: TextStyle(fontSize: 15, color: Colors.white)),
                              const Text('Standard Muscle', style: TextStyle(fontSize: 15, color: Colors.white)),
                              const SizedBox(height: 10,),
                              const Text('₱3,959', style: TextStyle(fontSize: 18, color: Colors.white, fontWeight: FontWeight.bold),),
                              const SizedBox(height: 10,),
                              Row(
                                children: [
                                  Container(
                                    height: 25,
                                    width: 115,
                                    decoration: BoxDecoration(
                                      border: Border.all(color: Colors.white),
                                      borderRadius: BorderRadius.circular(4),
                                    ),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        IconButton(
                                          icon: const Icon(Icons.remove, size: 10, color: Colors.white,),
                                          onPressed: () {
                                            setState(() {
                                              if (_count > 0) {
                                                _count--;
                                                _countController.text = _count.toString();
                                              }
                                            });
                                          },
                                        ),
                                        SizedBox(
                                          width: 15,
                                          child: TextField(
                                            controller: _countController,
                                            keyboardType: TextInputType.number,
                                            onChanged: (newValue) {
                                              setState(() {
                                                _count = int.tryParse(newValue) ?? _count;
                                              });
                                            },
                                            decoration: const InputDecoration(
                                              border: InputBorder.none,
                                            ),
                                            textAlign: TextAlign.center,
                                            style: const TextStyle(color: Colors.white),                                                                                          ),
                                        ),
                                        IconButton(
                                          icon: const Icon(Icons.add, size: 10, color: Colors.white,),
                                          onPressed: () {
                                            setState(() {
                                              _count++;
                                              _countController.text = _count.toString();
                                            });
                                          },
                                        ),
                                      ],
                                    ),
                                  ),

                                  const SizedBox(width: 50,),

                                  const Icon(Icons.check_box, color: Colors.white,)
                                ],
                              )
                            ],
                          )
                        ],
                      )
                    ),

                  ],
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: 80,
                color: const Color(0xffA80025),
                  child: Row(
                    children: [
                      const Expanded(
                        child: Padding(
                          padding: EdgeInsets.only(left: 16.0, right: 16),
                          child: Text(
                            'Total: ₱3,959',
                            style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold, color: Colors.white),
                          ),
                        ),
                      ),
                      OutlinedButton.icon(
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => const Checkout()));
                        },
                        style: ButtonStyle(
                          side: MaterialStateProperty.all<BorderSide>(
                            const BorderSide(color: Colors.white), 
                          ),
                          backgroundColor: MaterialStateProperty.all<Color>(Colors.transparent),
                          padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                            const EdgeInsets.symmetric(vertical: 14.0, horizontal: 20.0), 
                          ),
                        ),
                        icon: const Icon(Icons.shopping_cart_checkout, color: Colors.white),
                        label: const Text(
                          'Checkout',
                          style: TextStyle(fontSize: 16.0, color: Colors.white),
                        ),
                      ),
                      const SizedBox(width: 5,)
                    ],
                  ),
              ),
            ),
          ],
        ),
      ),
      
    );
  }
}