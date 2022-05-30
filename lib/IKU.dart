import 'package:flutter/material.dart';

void main() {
  runApp(const IKU());
}

class IKU extends StatelessWidget {
  const IKU({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GRID',
      home: Scaffold(
          // appBar: AppBar(
          //   title: const Text('Hello'),
          // ),
          body: Stack(
        children: [
          Container(
            height: double.infinity,
            decoration: BoxDecoration(
                image: DecorationImage(
              fit: BoxFit.cover,
              image: const AssetImage("images/isola.jpg"),
              colorFilter: ColorFilter.mode(
                  Colors.black.withOpacity(0.2), BlendMode.dstATop),
            )),
          ),
          Center(
            child: GridView(
                padding: const EdgeInsets.all(20),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                ),
                children: [
                  Container(
                    decoration: BoxDecoration(
                        // border: Border.all(),
                        image: const DecorationImage(
                            image: AssetImage("images/UPI.png"))),
                    padding: const EdgeInsets.all(14),
                    margin: const EdgeInsets.all(20),
                    alignment: Alignment.bottomCenter,
                    child: const Text(
                      'FPMIPA',
                      style: TextStyle(backgroundColor: Colors.white),
                    ),
                  ),
                  // onTap: () {
                  //   Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                  //     return FPMIPA();
                  //   }));
                  // }
                  Container(
                      decoration: BoxDecoration(
                          // border: Border.all(),
                          image: const DecorationImage(
                              image: AssetImage("images/UPI.png"))),
                      padding: const EdgeInsets.all(14),
                      margin: const EdgeInsets.all(20),
                      alignment: Alignment.bottomCenter,
                      child: const Text(
                        'FPIPS',
                        style: TextStyle(backgroundColor: Colors.white),
                      )),
                  Container(
                      decoration: BoxDecoration(
                          // border: Border.all(),
                          image: const DecorationImage(
                              image: AssetImage("images/UPI.png"))),
                      padding: const EdgeInsets.all(14),
                      margin: const EdgeInsets.all(20),
                      alignment: Alignment.bottomCenter,
                      child: const Text(
                        'FIP',
                        style: TextStyle(backgroundColor: Colors.white),
                      )),
                  Container(
                      decoration: BoxDecoration(
                          // border: Border.all(),
                          image: const DecorationImage(
                              image: AssetImage("images/UPI.png"))),
                      padding: const EdgeInsets.all(14),
                      margin: const EdgeInsets.all(20),
                      alignment: Alignment.bottomCenter,
                      child: const Text(
                        'FPBS',
                        style: TextStyle(backgroundColor: Colors.white),
                      )),
                  Container(
                      decoration: BoxDecoration(
                          // border: Border.all(),
                          image: const DecorationImage(
                              image: AssetImage("images/UPI.png"))),
                      padding: const EdgeInsets.all(14),
                      margin: const EdgeInsets.all(20),
                      alignment: Alignment.bottomCenter,
                      child: const Text(
                        'FPSD',
                        style: TextStyle(backgroundColor: Colors.white),
                      )),
                  Container(
                      decoration: BoxDecoration(
                          // border: Border.all(),
                          image: const DecorationImage(
                              image: AssetImage("images/UPI.png"))),
                      padding: const EdgeInsets.all(14),
                      margin: const EdgeInsets.all(20),
                      alignment: Alignment.bottomCenter,
                      child: const Text(
                        'FPTK',
                        style: TextStyle(backgroundColor: Colors.white),
                      )),
                  Container(
                      decoration: BoxDecoration(
                          // border: Border.all(),
                          image: const DecorationImage(
                              image: AssetImage("images/UPI.png"))),
                      padding: const EdgeInsets.all(14),
                      margin: const EdgeInsets.all(20),
                      alignment: Alignment.bottomCenter,
                      child: const Text(
                        'FPOK',
                        style: TextStyle(backgroundColor: Colors.white),
                      )),
                  Container(
                      decoration: BoxDecoration(
                          // border: Border.all(),
                          image: const DecorationImage(
                              image: AssetImage("images/UPI.png"))),
                      padding: const EdgeInsets.all(14),
                      margin: const EdgeInsets.all(20),
                      alignment: Alignment.bottomCenter,
                      child: const Text(
                        'FPEB',
                        style: TextStyle(backgroundColor: Colors.white),
                      )),
                  Container(
                      decoration: BoxDecoration(
                          // border: Border.all(),
                          image: const DecorationImage(
                              image: AssetImage("images/UPI.png"))),
                      padding: const EdgeInsets.all(14),
                      margin: const EdgeInsets.all(20),
                      alignment: Alignment.bottomCenter,
                      child: const Text(
                        'K.D CIBIRU',
                        style: TextStyle(backgroundColor: Colors.white),
                      )),
                  Container(
                      decoration: BoxDecoration(
                          // border: Border.all(),
                          image: const DecorationImage(
                              image: AssetImage("images/UPI.png"))),
                      padding: const EdgeInsets.all(14),
                      margin: const EdgeInsets.all(20),
                      alignment: Alignment.bottomCenter,
                      child: const Text(
                        'K.D SUMEDANG',
                        style: TextStyle(backgroundColor: Colors.white),
                      )),
                  Container(
                      decoration: BoxDecoration(
                          // border: Border.all(),
                          image: const DecorationImage(
                              image: AssetImage("images/UPI.png"))),
                      padding: const EdgeInsets.all(14),
                      margin: const EdgeInsets.all(20),
                      alignment: Alignment.bottomCenter,
                      child: const Text(
                        'K.D TASIKMALAYA',
                        style: TextStyle(backgroundColor: Colors.white),
                      )),
                  Container(
                      decoration: BoxDecoration(
                          // border: Border.all(),
                          image: const DecorationImage(
                              image: AssetImage("images/UPI.png"))),
                      padding: const EdgeInsets.all(14),
                      margin: const EdgeInsets.all(20),
                      alignment: Alignment.bottomCenter,
                      child: const Text(
                        'K.D PURWAKARTA',
                        style: TextStyle(backgroundColor: Colors.white),
                      )),
                  Container(
                      decoration: BoxDecoration(
                          // border: Border.all(),
                          image: const DecorationImage(
                              image: AssetImage("images/UPI.png"))),
                      padding: const EdgeInsets.all(14),
                      margin: const EdgeInsets.all(20),
                      alignment: Alignment.bottomCenter,
                      child: const Text(
                        'K.D SERANG',
                        style: TextStyle(backgroundColor: Colors.white),
                      )),
                ]),
          )
        ],
      )),
    );
  }
}
