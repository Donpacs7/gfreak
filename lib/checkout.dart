import 'package:flutter/material.dart';
import 'package:g_freak_supplements/completed.dart';

class Checkout extends StatefulWidget {
  const Checkout({ Key? key }) : super(key: key);

  @override
  _CheckoutState createState() => _CheckoutState();
}

class _CheckoutState extends State<Checkout> {
  String _selectedValue1 = 'Cash on Delivery';
  String _selectedValue2 = '124 Pugaro Manaoag';

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
          title: const Text('Checkout', textAlign: TextAlign.center, style: TextStyle(color: Colors.white),),
          centerTitle: true,
          backgroundColor: const Color(0xffA80025),
          elevation: 0,
        ),
          body: Column(
            children: [
              Expanded(
                child: SingleChildScrollView(
                  child: Padding(padding: EdgeInsets.all(10),
                    child: Column(
                      children: [
                        Container(
                          height: 100,
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
                                  width: 100,
                                  height: 100,
                                ),
                              ),
                              const SizedBox(width: 5,),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: const [
                                  Text('Optimum Nitrition 100% Whey', style: TextStyle(fontSize: 13, color: Colors.white),),
                                  Text('Protein Powder 5Lbs - On Gold', style: TextStyle(fontSize: 13, color: Colors.white),),
                                  Text('Standard Muscle', style: TextStyle(fontSize: 13, color: Colors.white),),
                                  SizedBox(height: 5,),
                                  Text('1 item', style: TextStyle(fontSize: 13, color: Colors.white),)
                                ],
                              ),
                              const SizedBox(width: 15,),
                              const Text('₱3,959', style: TextStyle(fontSize: 18, color: Colors.white, fontWeight: FontWeight.bold),)
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                ),
              ),
              Container(
                height: 200,
                color: Colors.transparent,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const SizedBox(width: 5,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        
                        const SizedBox(height: 5,),
                        const Text('Payment Option', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),),
                        const SizedBox(height: 20,),
                        Container(
                          width: 250,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.white,
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(4),
                          ),
                          child: DropdownButtonHideUnderline(
                            child: DropdownButton<String>(
                              iconEnabledColor: Colors.white,
                              value: _selectedValue1,
                              items: <String>['Cash on Delivery', 'Gcash', 'Bank'].map((String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Center(child: Text(value)),
                                );
                              }).toList(),
                              onChanged: (String? newValue) {
                                setState(() {
                                  _selectedValue1 = newValue ?? _selectedValue1;
                                });
                              },
                              style: const TextStyle(color: Colors.white),
                              dropdownColor: Colors.black,
                            ),
                          ),
                        ),
                        const SizedBox(height: 20,),
                        Container(
                          width: 250,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.white,
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(4),
                          ),
                          child: DropdownButtonHideUnderline(
                            child: DropdownButton<String>(
                              iconEnabledColor: Colors.white,
                              value: _selectedValue2,
                              items: <String>['124 Pugaro Manaoag', '150 Manaoag Pang', '213 street, Cavity'].map((String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Center(child: Text(value)),
                                );
                              }).toList(),
                              onChanged: (String? newValue) {
                                setState(() {
                                  _selectedValue2 = newValue ?? _selectedValue2;
                                });
                              },
                              style: const TextStyle(color: Colors.white),
                              dropdownColor: Colors.black,
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                )
              ),
              Container(
                height: 60,
                color: const Color(0xffA80025),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const Text('1 item', style: TextStyle(fontSize: 15, color: Colors.white),),
                    const SizedBox(width: 10,),
                    const Text('₱3,959', style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),),
                    const SizedBox(width: 50,),
                    SizedBox(
                      width: 150,
                      height: 50,
                      child: OutlinedButton(
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => const Completed()));
                        },
                        style: OutlinedButton.styleFrom(
                          side: const BorderSide(color: Colors.white),
                          backgroundColor: Colors.transparent,
                        ),
                        child: const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            'Place order',
                            style: TextStyle(fontSize: 18.0, color: Colors.white),
                          ),
                        ),
                      ),
                    )
                  ],
                )
              ),
            ],
          ),
      ),
    );
  }
}