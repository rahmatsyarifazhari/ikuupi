import 'package:flutter/material.dart';
import 'package:iku_application/Home.dart';

void main() {
  runApp(const Login());
}

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);
  @override
  MyAppState createState() {
    return MyAppState();
  }
}

class MyAppState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      // appBar: AppBar(title: const Text("Bottom Nav")),
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
          Container(
            height: 50,
            // decoration: BoxDecoration(border: Border.all()),
            child: Image.asset("images/iku.png"),
          ),
          Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  width: 300,
                  height: 200,
                  // padding: EdgeInsets.all(100),
                  decoration: const BoxDecoration(
                    // border: Border.all(),
                    image: DecorationImage(
                      image: AssetImage("images/UPI.png"),
                    ),
                  ),
                  clipBehavior: Clip.hardEdge,
                ),
                const Padding(
                    padding: EdgeInsets.fromLTRB(70, 50, 70, 10),
                    child: TextField(
                        decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(),
                            labelText: 'Username',
                            floatingLabelStyle: TextStyle(color: Colors.black),
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.black))))),
                const Padding(
                    padding: EdgeInsets.fromLTRB(70, 10, 70, 10),
                    child: TextField(
                      decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(),
                          labelText: 'Password',
                          floatingLabelStyle: TextStyle(color: Colors.black),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black))),
                      obscureText: true,
                    )),
                Padding(
                    padding:
                        const EdgeInsets.all(30), //padding 50px ke semua arah
                    child: ElevatedButton(
                      // onTap: () {
                      // Navigator.of(context)
                      //     .push(MaterialPageRoute(builder: (context) {
                      //   return FPMIPA();
                      // }));}
                      onPressed: () {
                        setState(() {
                          Navigator.of(context)
                              .push(MaterialPageRoute(builder: (context) {
                            return Home();
                          }));
                          // _nama = textEditController.text;
                        }); //refresh
                      },
                      child: const Text('Login'),
                      style: ElevatedButton.styleFrom(
                          primary: Colors.red,
                          textStyle: const TextStyle(fontSize: 20),
                          padding: const EdgeInsets.symmetric(
                              horizontal: 50, vertical: 20),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          )),
                    )),
              ],
            ),
          )
        ],
      ),
    ));
  }
}
