import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_login/flutter_login.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:login_plant_app/user.dart';
import 'package:login_plant_app/main.dart';
import 'package:login_plant_app/user.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:http/http.dart' as http;
class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final userController = TextEditingController();
  final passwordController = TextEditingController();


  late bool obscureText;
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  //final String baseUrl ="http://192.168.1.21/login/login.php";

//   void loginValidation(BuildContext context) async{

    
//   var url =Uri.http("192.168.1.21", '/login/login.php', {'q': '{http}'});
//       var response = await http.post(url, body: {
//           "username" : user.text,
//           "password" : pass.text,
         
//         });

//       var dataUser = json.decode(response.body);
//       if (dataUser.length <1){
        
//         Navigator.push(
//           context,
//            MaterialPageRoute(
//             builder: (context) => LoginHomePage(),
//           ),
//           );
//       }else{
//         Fluttertoast.showToast(
//           backgroundColor: Colors.red,
//           textColor: Colors.white,
//           msg: 'username  dan password salah',
//           toastLength: Toast.LENGTH_SHORT,
//         );
//       }
// }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    obscureText = true;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: scaffoldKey,
        body: Container(
          padding: const EdgeInsets.all(20),
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  colors: [Colors.blue, Colors.red])),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Card(
                elevation: 12,
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    children: <Widget>[
                      const SizedBox(
                        height: 30,
                      ),
                      const Text(
                        'LOGIN',
                        style: TextStyle(
                            fontSize: 28,
                            color: Colors.black54,
                            fontFamily: "Avenir",
                            fontWeight: FontWeight.bold,
                            fontStyle: FontStyle.normal),
                      ),
                      const SizedBox(
                        height: 70,
                      ),
                      Container(
                          margin: const EdgeInsets.symmetric(horizontal: 10),
                          child: Column(
                            children: <Widget>[
                              Material(
                                  color: Colors.white,
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(20)),
                                  elevation: 2,
                                  child: AspectRatio(
                                      aspectRatio: 7 / 1,
                                      child: Center(
                                          child: TextFormField(
                                        decoration: const InputDecoration(
                                            hintText: 'Username',
                                            border: InputBorder.none,
                                            contentPadding: EdgeInsets.all(8)),
                                        controller: userController,
                                        keyboardType:
                                            TextInputType.emailAddress,
                                      )))),
                              Container(
                                  margin: const EdgeInsets.only(top: 16),
                                  child: Material(
                                      color: Colors.white,
                                      borderRadius: const BorderRadius.all(
                                          Radius.circular(20)),
                                      elevation: 2,
                                      child: Row(
                                        children: <Widget>[
                                          Expanded(
                                            child: AspectRatio(
                                                aspectRatio: 7 / 1,
                                                child: Center(
                                                    child: TextFormField(
                                                  decoration:
                                                      const InputDecoration(
                                                          hintText: 'Password',
                                                          border:
                                                              InputBorder.none,
                                                          contentPadding:
                                                              EdgeInsets.all(
                                                                  8)),
                                                  controller:
                                                      passwordController,
                                                  obscureText: obscureText,
                                                ))),
                                          ),
                                          IconButton(
                                            icon: Icon(
                                              Icons.remove_red_eye,
                                              color: !obscureText
                                                  ? Colors.black
                                                      .withOpacity(0.3)
                                                  : Colors.black,
                                            ),
                                            onPressed: () {
                                              setState(() {
                                                obscureText = !obscureText;
                                              });
                                            },
                                          )
                                        ],
                                      ))),
                              Container(
                                  margin: const EdgeInsets.only(top: 30),
                                  width: MediaQuery.of(context).size.width,
                                  child: MaterialButton(
                                    onPressed: () {
                                    //  getHTTP(context);
                                      loginValidation(context);
                                    },
                                    child: const Text("Login",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.w700,
                                            fontSize: 16)),
                                    color: const Color(0xFFF58634),
                                    shape: const RoundedRectangleBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(50))),
                                    padding: const EdgeInsets.all(16),
                                  )),
                            ],
                          )),
                      const SizedBox(
                        height: 70,
                      ),
                      Container(
                        margin: const EdgeInsets.only(bottom: 40),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            InkWell(
                              onTap: () {},
                              child: const Text(
                                'Sign Up',
                                style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.black87,
                                    fontFamily: "Avenir",
                                    fontWeight: FontWeight.w500,
                                    fontStyle: FontStyle.normal),
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            InkWell(
                              onTap: () {},
                              child: const Text(
                                'Forgot Password?',
                                style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.black87,
                                    fontFamily: "Avenir",
                                    fontWeight: FontWeight.w500,
                                    fontStyle: FontStyle.normal),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ));
  }
void _onWidgetDidBuild(Function callback) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      callback();
    });
  }

  void loginValidation(BuildContext context) async {
    bool isLoginValid = true;
    FocusScope.of(context).requestFocus(FocusNode());

    if (userController.text.isEmpty) {
      isLoginValid = false;
      _onWidgetDidBuild(() {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Username Tidak Boleh Kosong'),
            backgroundColor: Colors.red,
          ),
        );
      });
    }

    if (passwordController.text.isEmpty) {
      isLoginValid = false;
      _onWidgetDidBuild(() {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Password Tidak Boleh Kosong'),
            backgroundColor: Colors.red,
          ),
        );
      });
    }
    if(isLoginValid){
      getHTTP(context, userController, passwordController);
    }
    }
    getHTTP(BuildContext, TextEditingController userController, TextEditingController passwordController) async {
      try {
        var response = await Dio().get("http://192.168.100.3/assets/login/login.php");
        print(response);
      } catch (e) {
        print(e);
      };
    
      //Messsage
      _onWidgetDidBuild(() {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Login Berhasil'),
            backgroundColor: Colors.green,
          ),
        );
      });
      //homePage
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) =>  User()));
    }
    }