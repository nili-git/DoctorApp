import 'package:doctorapp/Feature4/sharedpreferencepage.dart';
import 'package:doctorapp/api3/controller2.dart';
import 'package:doctorapp/api3/model2.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  get currentState => null;

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _checkbox = false;

  final TextEditingController _userNameController = TextEditingController();

  final TextEditingController _passwordController = TextEditingController();

  final DioClientss _client = DioClientss();

  late Future<List<Data>> futureAlbum;

  @override
  void initState() {
    //futureAlbum = _client.userserverrequest();
    super.initState();
    // print("token is $token");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(36, 98, 127, 1),
      body: SafeArea(
        child: SingleChildScrollView(
          // physics: const NeverScrollableScrollPhysics(),
          child: Column(
            children: [
              SizedBox(
                height: 30,
                child: Padding(
                  padding: const EdgeInsets.only(
                    right: 15,
                    left: 15,
                    top: 10,
                  ),
                  child: Row(
                    children: const [
                      Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 100,
              ),

              Stack(
                children: const <Widget>[
                  CircleAvatar(
                    radius: 70.0,
                    backgroundImage: AssetImage('assets/logo.png'),
                  ),
                ],
              ),

              const SizedBox(
                height: 120,
              ),

              // Flexible(
              //   child: SizedBox(
              //     width: double.infinity,
              //     height: 220.0,
              //     child: Container(
              //       child: SizedBox(
              //         width: double.infinity,
              //         height: 146,
              //         child: Row(
              //           mainAxisSize: MainAxisSize.min,
              //           mainAxisAlignment: MainAxisAlignment.center,
              //           crossAxisAlignment: CrossAxisAlignment.center,
              //           children: [
              //             SizedBox(
              //               width: 154,
              //               height: 150,
              //               child: Stack(
              //                 children: [
              //                   Positioned(
              //                     left: 8.97,
              //                     top: 15.72,
              //                     child: SizedBox(
              //                       width: 125.55,
              //                       height: 125.58,
              //                       child: Stack(
              //                         children: const [
              //                           Positioned.fill(
              //                             child: Align(
              //                               alignment: Alignment.topLeft,
              //                               child: CircleAvatar(
              //                                 maxRadius: 70,
              //                                 backgroundImage:
              //                                     AssetImage('assets/logo.png'),
              //                               ),
              //                             ),
              //                           ),
              //                         ],
              //                       ),
              //                     ),
              //                   ),
              //                 ],
              //               ),
              //             ),
              //           ],
              //         ),
              //       ),
              //       decoration: const BoxDecoration(color: Color(0xff24627f)),
              //     ),
              //   ),
              // ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                decoration: BoxDecoration(
                  color: const Color.fromRGBO(236, 247, 251, 1),
                  border: Border.all(
                    width: 0,
                    color: const Color.fromRGBO(36, 98, 127, 1),
                  ),
                  borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(30.0),
                    topLeft: Radius.circular(30.0),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(30, 25, 10, 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    //mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Center(
                        child: Text(
                          " Welcome, sign in with your number to continue",
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),

                      const Padding(
                        padding: EdgeInsets.fromLTRB(25, 25, 10, 0),
                        child: Text(
                          " Mobile Number",
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.fromLTRB(15, 5, 10, 0),
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          margin: const EdgeInsets.fromLTRB(15, 10, 15, 0),
                          decoration: BoxDecoration(
                            color: const Color.fromRGBO(255, 255, 255, 1),
                            border: Border.all(width: 0, color: Colors.grey),
                            borderRadius: const BorderRadius.only(
                              topRight: Radius.circular(15.0),
                              topLeft: Radius.circular(15.0),
                              bottomLeft: Radius.circular(15.0),
                              bottomRight: Radius.circular(15.0),
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                10, 0, 20, 0),
                            child: TextFormField(
                              controller: _userNameController,
                              obscureText: false,
                              decoration: const InputDecoration(
                                //labelText: "Mobile Number",
                                labelStyle: TextStyle(color: Colors.black87),
                                hintText: 'Enter Mobile Number',
                                hintStyle: TextStyle(
                                  color: Colors.grey,
                                ),
                                border: InputBorder.none,
                              ),
                            ),
                          ),
                        ),
                      ),

                      const Padding(
                        padding: EdgeInsets.fromLTRB(25, 10, 10, 0),
                        child: Text(
                          " Password ",
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.fromLTRB(15, 5, 10, 0),
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          margin: const EdgeInsets.fromLTRB(15, 10, 15, 0),
                          decoration: BoxDecoration(
                            color: const Color.fromRGBO(255, 255, 255, 1),
                            border: Border.all(width: 0, color: Colors.grey),
                            borderRadius: const BorderRadius.only(
                              topRight: Radius.circular(15.0),
                              topLeft: Radius.circular(15.0),
                              bottomLeft: Radius.circular(15.0),
                              bottomRight: Radius.circular(15.0),
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                10, 0, 20, 0),
                            child: TextFormField(
                              controller: _passwordController,
                              obscureText: false,
                              decoration: const InputDecoration(
                                //labelText: "Mobile Number",
                                labelStyle: TextStyle(color: Colors.black87),
                                hintText: 'Enter Password ',
                                hintStyle: TextStyle(
                                  color: Colors.grey,
                                ),
                                suffixIcon: Icon(Icons.visibility_off_outlined),
                                border: InputBorder.none,
                              ),
                            ),
                          ),
                        ),
                      ),

                      const SizedBox(
                        height: 20,
                      ),

                      Container(
                        margin: const EdgeInsets.only(left: 20, right: 40),
                        child: Row(
                          children: [
                            Checkbox(
                                splashRadius: 20,
                                value: _checkbox,
                                onChanged: (value) {
                                  setState(() {
                                    _checkbox = !_checkbox;
                                  });
                                }),
                            const Text("Remember me"),
                            const Spacer(),
                            const Text("Forgot Password ?",
                                textAlign: TextAlign.right,
                                style: TextStyle(
                                  fontSize: 13,
                                  fontFamily: "Inter",
                                  fontWeight: FontWeight.w500,
                                  letterSpacing: 0.26,
                                )),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Center(
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(0, 0, 0, 20),
                          child: SizedBox(
                            width: 150,
                            child: MaterialButton(
                              onPressed: () async {
                                // SharedPreferences pref =
                                //     await SharedPreferences.getInstance();
                                // if (widget.currentState!.validate()) {
                                //   var mobileNumber =
                                //       _userNameController.text.toString();
                                //   var password =
                                //       _passwordController.text.toString();
                                //   var _controller;
                                //   if (_controller.isChecked.value == true) {
                                //     pref.setString("mobile", mobileNumber);
                                //     pref.setBool("check", true);
                                //   } else {
                                //     pref.remove("mobile");
                                //     pref.remove("check");
                                //   }
                                //   _controller.login(
                                //       context, mobileNumber, password);
                                // }
                                var data = {
                                  "countryCode": "977",
                                  "phone": _userNameController.text,
                                  "password": _passwordController.text,
                                  "deviceName": "",
                                  "deviceType": "",
                                  "deviceToken": ""
                                };
                                //print(data);
                                await _client.loginData(data);
                                print("token is $token");
                                // var token = token;
                                //print(res);
                              },
                              color: const Color(0XFF4BB5CA),
                              child: const Text(
                                "CONTINUE",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.normal),
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                            ),
                          ),
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.fromLTRB(8, 0, 8, 8),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            RichText(
                              text: const TextSpan(
                                  text: 'Dont have an Account? ',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 14,
                                      //fontFamily: "Inter",
                                      fontWeight: FontWeight.normal),
                                  children: <TextSpan>[
                                    TextSpan(
                                      text: " Sign up with Phone Number ",
                                      style: TextStyle(
                                          color: Color(0XFF4BB5CA),
                                          fontSize: 14,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ]),
                            ),
                          ],
                        ),
                      )
                      // SizedBox(
                      //   width: 300,
                      //   child: TextFormField(
                      //     controller: _userNameController,
                      //     obscureText: false,
                      //     decoration: const InputDecoration(
                      //       contentPadding: EdgeInsets.fromLTRB(10, 25, 10, 10),
                      //       labelText: "Mobile Number",
                      //       labelStyle: TextStyle(color: Colors.black87),
                      //       hintText: 'Enter Mobile Number',
                      //       border: InputBorder.none,
                      //     ),
                      //   ),

                      // ),
                    ],
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
