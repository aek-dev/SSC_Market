import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class tor_vela extends StatefulWidget {
  const tor_vela({Key? key}) : super(key: key);

  @override
  State<tor_vela> createState() => _tor_velaState();
}

class _tor_velaState extends State<tor_vela> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text(
          'ຕໍ່ອາຍຸການໃຊ້ງານ',
        ),
        centerTitle: true,
      ),
      body: Container(
        color: Colors.green,
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
              color: Colors.white),
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.phone,
                          size: 22,
                        ),
                        Text(
                          "  ເບີໂທລະສັບ",
                          style: TextStyle(fontSize: 18),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text("020 97625343  ", style: TextStyle(fontSize: 16)),
                        Icon(Icons.arrow_forward_ios_rounded)
                      ],
                    ),
                  ],
                ),
              ),
              Divider(
                height: 10,
              ),
              Container(
                padding: EdgeInsets.all(20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.lock,
                          size: 22,
                        ),
                        Text(
                          "  ລະຫັດຜ່ານ",
                          style: TextStyle(fontSize: 18),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text("*******  ", style: TextStyle(fontSize: 16)),
                        Icon(Icons.arrow_forward_ios_rounded)
                      ],
                    ),
                  ],
                ),
              ),
              Divider(
                height: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
