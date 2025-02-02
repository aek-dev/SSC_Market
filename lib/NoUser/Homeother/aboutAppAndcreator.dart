import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class aboutappAndcreator extends StatefulWidget {
  const aboutappAndcreator({Key? key}) : super(key: key);

  @override
  State<aboutappAndcreator> createState() => _aboutappAndcreatorState();
}

class _aboutappAndcreatorState extends State<aboutappAndcreator> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text(
          'ແອັບພິເຄຊັ່ນ ແລະ ຜູ້ພັດທະນາ',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
          padding: EdgeInsets.all(20),
          child: Center(
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.all(15),
                  child: Text(
                    "ແອັບພິເຄຊັ່ນ",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.green,
                        fontSize: 22,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.black12,
                  ),
                  child: Text(
                    "ພວກຂ້າພະເຈົ້າຂໍສະແດງຄວາມຮູ້ບຸນຄຸນ ແລະ ຂອບໃຈ ທ່ານ ປທ. ນາງ ມະນິດດາ ທະວົງຈິດ ທີ່ເປັນອາຈານທີ່ປຶກສາຂອງພວກນ້ອງ ເຊິ່ງໄດ້ສະຫຼະເວລາໃຫ້ຄຳແນະນຳ, ປະກອບຄຳຄິດຄຳເຫັນ ແລະ ຊ່ວຍເຫຼືອ ໃນການຂຽນບົດຄົ້ນຄ້ວາເຫຼັ້ມນີ້. ໃນຂະນະດຽວກັນ ພວກນ້ອງຂໍສະແດງຄວາມຂອບໃຈມາຍັງ ທ່ານ ປທ. ລັດຕະພົນໄຊຍະວົງ ທີ່ໄດ້ໃຫ້ຄຳຄິດຄຳເຫັນທາງດ້ານວິເຄາະລະບົບ ແລະ ວິທີການຂຽນບົດໂດຍລວມ.",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.black54, fontSize: 19),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(15),
                  child: Text(
                    "ຜູ້ພັດທະນາ",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.green,
                        fontSize: 22,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                profile(
                  pic: "assets/images/pelou.jpg",
                  name: "ທ້າວ ປາທິກອນ ພົມມະສານ",
                  student: "ນັກສຶກສາ ສະຖາບັນ ເຕັກໂນໂລຊີ ສຸດສະກະ",
                  dev: "Frontend Developer",
                  mail: "pelou.pms@gmail.com",
                  tel: "+85620 97625343",
                  facebook: "Pathikone Phommasan",
                ),
                SizedBox(
                  height: 20,
                ),
                profile(
                  pic: "assets/images/aek.jpg",
                  name: "ທ້າວ ຈີລະຍຸ ວົງສິລິ",
                  student: "ນັກສຶກສາ ສະຖາບັນ ເຕັກໂນໂລຊີ ສຸດສະກະ",
                  dev: "Backend Developer",
                  mail: "aek123806@gmail.com",
                  tel: "+85620 96218527",
                  facebook: "A'aek Vongsili",
                ),
                SizedBox(
                  height: 20,
                ),
                profile(
                  pic: "assets/images/viseth.jpg",
                  name: "ທ້າວ ວິເສດ ຄຳສຸກຖາວົງ",
                  student: "ນັກສຶກສາ ສະຖາບັນ ເຕັກໂນໂລຊີ ສຸດສະກະ",
                  dev: "----------------",
                  mail: "visethmie@gmail.com",
                  tel: "+85620 93039850",
                  facebook: "Viseth Khamsoukthavong",
                )
              ],
            ),
          )),
    );
  }
}

// #############################################################

class profile extends StatelessWidget {
  final pic;
  final String name;
  final String student;
  final String dev;
  final String mail;
  final String tel;
  final String facebook;
  const profile({
    Key? key,
    this.pic,
    required this.name,
    required this.student,
    required this.dev,
    required this.mail,
    required this.tel,
    required this.facebook,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20), color: Colors.black12),
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(50)),
            padding: EdgeInsets.all(20),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(600),
              child: Image.asset(
                pic,
                width: 250,
                height: 250,
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(0),
                  topRight: Radius.circular(0),
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                )
                ),
            padding: EdgeInsets.all(10),
            child: Column(
              children: [
                Row(
                  children: [
                    SizedBox(
                      child: Icon(
                        Icons.person,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      child: Text(
                        name,
                        textAlign: TextAlign.left,
                        style: TextStyle(fontSize: 22, color: Colors.white),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    SizedBox(
                      child: Icon(
                        Icons.school,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      child: Text(
                        student,
                        textAlign: TextAlign.left,
                        style: TextStyle(fontSize: 18, color: Colors.white),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    SizedBox(
                      child: Icon(
                        Icons.code,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      child: Text(
                        dev,
                        textAlign: TextAlign.left,
                        style: TextStyle(fontSize: 18, color: Colors.white),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    SizedBox(
                      child: Icon(
                        Icons.mail,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      child: Text(
                        mail,
                        textAlign: TextAlign.left,
                        style: TextStyle(fontSize: 18, color: Colors.white),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    SizedBox(
                      child: Icon(
                        Icons.whatsapp,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      child: Text(
                        tel,
                        textAlign: TextAlign.left,
                        style: TextStyle(fontSize: 18, color: Colors.white),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    SizedBox(
                      child: Icon(
                        Icons.facebook,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      child: Text(
                        facebook,
                        textAlign: TextAlign.left,
                        style: TextStyle(fontSize: 18, color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
