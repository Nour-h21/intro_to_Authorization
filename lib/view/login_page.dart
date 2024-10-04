import 'package:autho/model/user_model.dart';
import 'package:autho/service/auth_service.dart';
import 'package:autho/view/information_page.dart';
import 'package:flutter/material.dart';

class LogInPage extends StatelessWidget {
  LogInPage({super.key});

  final TextEditingController username = TextEditingController();

  final TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage('images/image.png'),
              ),
            ),
          ),
          Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text(
              'Welcome back!',
              style: TextStyle(
                fontSize: 30,
                color: Colors.black,
                fontFamily: 'Arima',
                fontWeight: FontWeight.w600,
                // height: 1,
                letterSpacing: 1,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Please Enter your Name and Password',
              style: TextStyle(
                fontSize: 18,
                color: Colors.black,
                fontFamily: 'Arima',
                fontWeight: FontWeight.w400,
                // height: 3,
                letterSpacing: 1,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 40, right: 40, top: 30),
              child: SizedBox(
                height: 60,
                child: TextField(
                  controller: username,
                  decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.person,
                        color: Color(0xFFaa887f),
                      ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(
                            25,
                          ),
                          borderSide: BorderSide(
                            color: Color(0xFFaa887f),
                          )),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black87),
                        borderRadius: BorderRadius.circular(
                          25,
                        ),
                      )),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 40, right: 40),
              child: SizedBox(
                height: 60,
                child: TextField(
                  controller: password,
                  decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.password,
                      color: Color(0xFFaa887f),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(
                        25,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black87),
                      borderRadius: BorderRadius.circular(
                        25,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          const  SizedBox(
              height: 25,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 4, right: 4),
              child: SizedBox(
                height: 50,
                width: 160,
                child: ElevatedButton(
                    onPressed: () async {
                      bool status = await login(UserModel(
                          username: username.text, password: password.text));
                      if (status) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                          content: Text("Success"),
                          backgroundColor: Color(0xFFaa887f),
                        ));

                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => My(),
                            ));
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                          content: Text("Failed"),
                          backgroundColor: Colors.red,
                        ));
                      }
                    },
                    child: Text(
                      'Log in',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontFamily: 'Arima',
                        fontWeight: FontWeight.w800,
                        // height: 1,
                        letterSpacing: 1,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFFaa887f),
                      elevation: 4,
                    )),
              ),
            ),
          ])
        ]),
      ),
    );
  }
}
