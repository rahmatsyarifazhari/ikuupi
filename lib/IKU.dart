import 'package:flutter/material.dart';
import 'package:iku_application/Home.dart';
import 'FPIMIPA.dart';
import 'FIP.dart';
import 'FPIPS.dart';
import 'package:hexcolor/hexcolor.dart';

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
          appBar: AppBar(
            backgroundColor: HexColor("#E45826"),
            leading: InkWell(
              child: Icon(
                Icons.home,
                color: Colors.white,
              ),
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return Home();
                }));
              },
            ),
            // onTap: () {
            //   Navigator.pop(builder: context);
            // },
            centerTitle: true,
            title: const Text('IKU'),
          ),
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
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                    ),
                    children: [
                      InkWell(
                        child: Container(
                          decoration: BoxDecoration(
                              // border: Border.all(),
                              image: const DecorationImage(
                                  image: AssetImage("images/FPMIPA.png"))),
                          padding: const EdgeInsets.all(14),
                          margin: const EdgeInsets.all(20),
                          alignment: Alignment.bottomCenter,
                        ),
                        onTap: () {
                          Navigator.of(context)
                              .push(MaterialPageRoute(builder: (context) {
                            return FPMIPA();
                          }));
                        },
                      ),

                      ////////////////////
                      // onTap: () {
                      //   Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                      //     return FPMIPA();
                      //   }));
                      // }
                      /////////////////////
                      InkWell(
                        child: Container(
                          decoration: BoxDecoration(
                              // border: Border.all(),
                              image: const DecorationImage(
                                  image: AssetImage("images/FPIPS.png"))),
                          padding: const EdgeInsets.all(14),
                          margin: const EdgeInsets.all(20),
                          alignment: Alignment.bottomCenter,
                        ),
                        onTap: () {
                          Navigator.of(context)
                              .push(MaterialPageRoute(builder: (context) {
                            return FPIPS();
                          }));
                        },
                      ),
                      InkWell(
                        child: Container(
                          decoration: BoxDecoration(
                              // border: Border.all(),
                              image: const DecorationImage(
                                  image: AssetImage("images/FIP.png"))),
                          padding: const EdgeInsets.all(14),
                          margin: const EdgeInsets.all(20),
                          alignment: Alignment.bottomCenter,
                        ),
                        onTap: () {
                          Navigator.of(context)
                              .push(MaterialPageRoute(builder: (context) {
                            return FIP();
                          }));
                        },
                      ),
                      Container(
                        decoration: BoxDecoration(
                            // border: Border.all(),
                            image: const DecorationImage(
                                image: AssetImage("images/FPBS.png"))),
                        padding: const EdgeInsets.all(14),
                        margin: const EdgeInsets.all(20),
                        alignment: Alignment.bottomCenter,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            // border: Border.all(),
                            image: const DecorationImage(
                                image: AssetImage("images/FPSD.png"))),
                        padding: const EdgeInsets.all(14),
                        margin: const EdgeInsets.all(20),
                        alignment: Alignment.bottomCenter,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            // border: Border.all(),
                            image: const DecorationImage(
                                image: AssetImage("images/FPTK.png"))),
                        padding: const EdgeInsets.all(14),
                        margin: const EdgeInsets.all(20),
                        alignment: Alignment.bottomCenter,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            // border: Border.all(),
                            image: const DecorationImage(
                                image: AssetImage("images/FPOK.png"))),
                        padding: const EdgeInsets.all(14),
                        margin: const EdgeInsets.all(20),
                        alignment: Alignment.bottomCenter,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            // border: Border.all(),
                            image: const DecorationImage(
                                image: AssetImage("images/FPEB.png"))),
                        padding: const EdgeInsets.all(14),
                        margin: const EdgeInsets.all(20),
                        alignment: Alignment.bottomCenter,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            // border: Border.all(),
                            image: const DecorationImage(
                                image: AssetImage("images/KDCIBIRU.PNG"))),
                        padding: const EdgeInsets.all(14),
                        margin: const EdgeInsets.all(20),
                        alignment: Alignment.bottomCenter,
                      ),
                      Container(
                          decoration: BoxDecoration(
                              // border: Border.all(),
                              image: const DecorationImage(
                                  image: AssetImage("images/UPI.png"))),
                          padding: const EdgeInsets.all(14),
                          margin: const EdgeInsets.all(20),
                          alignment: Alignment.center,
                          child: const Text(
                            'K.D SUMEDANG',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                backgroundColor: Colors.white),
                          )),
                      Container(
                          decoration: BoxDecoration(
                              // border: Border.all(),
                              image: const DecorationImage(
                                  image: AssetImage("images/UPI.png"))),
                          padding: const EdgeInsets.all(14),
                          margin: const EdgeInsets.all(20),
                          alignment: Alignment.center,
                          child: const Text(
                            'K.D TASIKMALAYA',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                backgroundColor: Colors.white),
                          )),
                      Container(
                        decoration: BoxDecoration(
                            // border: Border.all(),
                            image: const DecorationImage(
                                image: AssetImage("images/KDPURWAKARTA.png"))),
                        padding: const EdgeInsets.all(14),
                        margin: const EdgeInsets.all(20),
                        alignment: Alignment.bottomCenter,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            // border: Border.all(),
                            image: const DecorationImage(
                                image: AssetImage("images/KDSERANG.png"))),
                        padding: const EdgeInsets.all(14),
                        margin: const EdgeInsets.all(20),
                        alignment: Alignment.bottomCenter,
                      ),
                    ]),
              )
            ],
          )),
    );
  }

  void setState(Null Function() param0) {}
}
