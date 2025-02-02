import 'dart:convert';

import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:page_transition/page_transition.dart';
import 'package:ssc_market/Api_Handler.dart';
import 'package:ssc_market/NoUser/About.dart';
import 'package:ssc_market/NoUser/BottomBar.dart';
import 'package:ssc_market/NoUser/LoginAndRegister/forgetpassword.dart';

class logins extends StatefulWidget {
  const logins({Key? key}) : super(key: key);

  @override
  State<logins> createState() => _loginsState();
}

class _loginsState extends State<logins> {
  final formkey = GlobalKey<FormState>();

  bool visit_pass = true;
  TextEditingController phoneController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  ApiHandler apiHandler = ApiHandler();
  String errorText = "";
  bool validate = false;
  bool circular = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text(
          "ຍິນດີຕ້ອນຮັບທຸກໆທ່ານ",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.of(context).push(PageTransition(
                    child: Abouts(), type: PageTransitionType.rightToLeft));
              },
              icon: Icon(Icons.info_outline))
        ],
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(30.0),
          child: Form(
            key: formkey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 20,
                ),
                Container(
                  child: Image.asset("assets/icons/logo.png"),
                ),
                Divider(
                  height: 40,
                ),
                TextFormField(
                  controller: phoneController,
                  keyboardType: TextInputType.name,
                  decoration: InputDecoration(
                      prefixIcon: Padding(
                        padding: const EdgeInsets.only(top: 10, left: 15),
                        child: Text(
                          '+856 20 | ',
                          style: TextStyle(fontSize: 16, color: Colors.black38),
                        ),
                      ),
                      errorText: validate ? null : errorText,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15)),
                      icon: Icon(Icons.person),
                      hintText: "ເບີໂທຂອງທ່ານ"),
                ),
                SizedBox(
                  height: 25,
                ),
                TextFormField(
                  controller: passwordController,
                  keyboardType: TextInputType.visiblePassword,
                  obscureText: visit_pass,
                  decoration: InputDecoration(
                      suffixIcon: IconButton(
                          icon: Icon(visit_pass
                              ? Icons.visibility_off
                              : Icons.visibility),
                          onPressed: () {
                            setState(() {
                              visit_pass = !visit_pass;
                            });
                          }),
                      errorText: validate ? null : errorText,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15)),
                      icon: Icon(Icons.lock),
                      hintText: "ລະຫັດຜ່ານ"),
                ),
                SizedBox(
                  height: 25,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(PageTransition(
                        child: forgetpassword(),
                        type: PageTransitionType.rightToLeft));
                  },
                  child: Text('ລືມລະຫັັດຜ່ານແມ່ນບໍ່.?',
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.black54)),
                ),
                Divider(
                  height: 35,
                ),
                Container(
                  child: circular
                      ? CircularProgressIndicator()
                      : SizedBox(
                          height: 60,
                          width: double.infinity,
                          child: ElevatedButton.icon(
                              style: ButtonStyle(
                                shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20.0),
                                  ),
                                ),
                              ),
                              icon: Icon(Icons.login),
                              label: Text(
                                "ເຂົ້າສູ່ລະບົບ",
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold),
                              ),
                              onPressed: () async {
                                setState(() {
                                  circular = true;
                                });
                                Map<String, String> data = {
                                  "phone": phoneController.text,
                                  "password": passwordController.text
                                };
                                var response =
                                    await apiHandler.post("/user/login", data);

                                if (response.statusCode == 200 ||
                                    response.statusCode == 201) {
                                  Map<String, dynamic> output =
                                      json.decode(response.body);
                                  print(output['token']);
                                  setState(() {
                                    validate = true;
                                    circular = false;
                                  });
                                } else {
                                  Map<String, dynamic> output =
                                      json.decode(response.body);
                                  setState(() {
                                    validate = false;
                                    errorText = output['message'];
                                    circular = false;
                                  });
                                }
                              }),
                        ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Container(
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        GestureDetector(
                          onTap: () {},
                          child: Text(
                            'ທ່ານຍັງບໍ່ມີບັນຊີບໍ່.? ກະລຸນາສ້າງບັນຊີຜູ້ໃຊ້ກ່ອນ',
                            style:
                                TextStyle(fontSize: 15, color: Colors.black54),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
