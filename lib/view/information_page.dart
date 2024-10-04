import 'package:autho/service/auth_service.dart';
import 'package:flutter/material.dart';

class My extends StatelessWidget {
  const My({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        toolbarHeight: 70,
        elevation: 6,
        shadowColor: Colors.grey.shade300,
        backgroundColor: const Color(0xFFaa887f),
        title: const Padding(
          padding: EdgeInsets.all(1),
          child: Text(
            'Information',
            style: TextStyle(
              color: Color.fromARGB(255, 255, 249, 242),
              fontSize: 32,
              fontFamily: 'Arima',
              fontWeight: FontWeight.w600,
              // height: 2,
              letterSpacing: 2,
            ),
          ),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.all(10),
            child: Icon(
              Icons.more_vert_outlined,
              color: Color.fromARGB(255, 255, 249, 242),
              size: 28,
            ),
          )
        ],
      ),
      body: FutureBuilder(
        future: getMyInfo(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return ListView(children: [
              const SizedBox(
                height: 5,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: double.infinity,
                    height: 800,
                    color: const Color(0xFFf8f5f0),
                    child: Column(
                        // crossAxisAlignment: CrossAxisAlignment.start,

                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 18, right: 6),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const SizedBox(
                                  height: 60,
                                ),
                                Row(
                                  children: [
                                    const Text(
                                      '-  Name : ',
                                      style: TextStyle(
                                        color: Colors.black87,
                                        fontSize: 20,
                                        fontFamily: 'Arima',
                                        fontWeight: FontWeight.w600,
                                        letterSpacing: 1,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                    Text(
                                      snapshot.data!.firstName,
                                      style: const TextStyle(
                                        color: Colors.black54,
                                        fontSize: 18,
                                        fontFamily: 'Arima',
                                        fontWeight: FontWeight.w400,
                                        letterSpacing: 1,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                    const SizedBox(
                                      width: 3,
                                    ),
                                    Text(
                                      snapshot.data!.lastName,
                                      style: const TextStyle(
                                        color: Colors.black54,
                                        fontSize: 18,
                                        fontFamily: 'Arima',
                                        fontWeight: FontWeight.w400,
                                        letterSpacing: 1,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 30,
                                ),
                                Row(
                                  children: [
                                    const Text(
                                      '-  Maiden Name : ',
                                      style: TextStyle(
                                        color: Colors.black87,
                                        fontSize: 20,
                                        fontFamily: 'Arima',
                                        fontWeight: FontWeight.w600,
                                        letterSpacing: 1,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                    Text(
                                      snapshot.data!.maidenName,
                                      style: const TextStyle(
                                        color: Colors.black54,
                                        fontSize: 18,
                                        fontFamily: 'Arima',
                                        fontWeight: FontWeight.w400,
                                        letterSpacing: 1,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ],
                                ),

                                // SizedBox(width: 40,),
                                const SizedBox(
                                  height: 30,
                                ),
                                Row(
                                  children: [
                                    const Text(
                                      '-  Age : ',
                                      style: TextStyle(
                                        color: Colors.black87,
                                        fontSize: 20,
                                        fontFamily: 'Arima',
                                        fontWeight: FontWeight.w600,
                                        letterSpacing: 1,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                    Text(
                                      snapshot.data!.age.toString(),
                                      style: const TextStyle(
                                        color: Colors.black54,
                                        fontSize: 18,
                                        fontFamily: 'Arima',
                                        fontWeight: FontWeight.w400,
                                        letterSpacing: 1,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 30,
                                ),

                                Row(
                                  children: [
                                    const Text(
                                      '-  Gender : ',
                                      style: TextStyle(
                                        color: Colors.black87,
                                        fontSize: 20,
                                        fontFamily: 'Arima',
                                        fontWeight: FontWeight.w600,
                                        letterSpacing: 1,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                    Text(
                                      snapshot.data!.gender,
                                      style: const TextStyle(
                                        color: Colors.black54,
                                        fontSize: 18,
                                        fontFamily: 'Arima',
                                        fontWeight: FontWeight.w400,
                                        letterSpacing: 1,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ],
                                ),
                                // SizedBox(width: 40,),
                                const SizedBox(
                                  height: 30,
                                ),
                                Row(
                                  children: [
                                    const Text(
                                      '-  BirthDate : ',
                                      style: TextStyle(
                                        color: Colors.black87,
                                        fontSize: 20,
                                        fontFamily: 'Arima',
                                        fontWeight: FontWeight.w600,
                                        letterSpacing: 1,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                    Text(
                                      snapshot.data!.birthDate,
                                      style: const TextStyle(
                                        color: Colors.black54,
                                        fontSize: 18,
                                        fontFamily: 'Arima',
                                        fontWeight: FontWeight.w400,
                                        letterSpacing: 1,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 30,
                                ),

                                Row(
                                  children: [
                                    const Text(
                                      '-  Email : ',
                                      style: TextStyle(
                                        color: Colors.black87,
                                        fontSize: 20,
                                        fontFamily: 'Arima',
                                        fontWeight: FontWeight.w600,
                                        letterSpacing: 1,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                    Text(
                                      snapshot.data!.email,
                                      style: const TextStyle(
                                        color: Colors.black54,
                                        fontSize: 17,
                                        fontFamily: 'Arima',
                                        fontWeight: FontWeight.w400,
                                        letterSpacing: 1,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ],
                                ),

                                const SizedBox(
                                  height: 30,
                                ),

                                Row(
                                  children: [
                                    const Text(
                                      '-  Phone : ',
                                      style: TextStyle(
                                        color: Colors.black87,
                                        fontSize: 20,
                                        fontFamily: 'Arima',
                                        fontWeight: FontWeight.w600,
                                        letterSpacing: 1,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                    Text(
                                      snapshot.data!.phone,
                                      style: const TextStyle(
                                        color: Colors.black54,
                                        fontSize: 18,
                                        fontFamily: 'Arima',
                                        fontWeight: FontWeight.w400,
                                        letterSpacing: 1,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ]),
                  ),
                ],
              ),
            ]);
          } else {
            return const Center(child: CircularProgressIndicator());
          }
        },
      ),
    ));
  }
}
