import 'package:flutter/material.dart';
import 'package:quizappwork/controler/accountcontroler.dart';

class Account extends StatefulWidget {
  const Account({super.key});

  @override
  State<Account> createState() => _AccountState();
}

class _AccountState extends State<Account> {
  TextEditingController namecontroler = TextEditingController();
  @override
  void initState() {
    getname();
    super.initState();
  }

  Future<void> getname() async {
    await AppUtils.gettoken();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            // Custom header
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.blue),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CircleAvatar(
                        radius: 40,
                        // backgroundImage: FileImage(File(imagePath)),
                        // optionally: backgroundColor if image missing
                      ),
                      SizedBox(height: 10),
                      Text(
                        AppUtils.gettoken().toString(),
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    ],
                  ),
                  Spacer(),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.camera_alt_outlined, color: Colors.white),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),

            // Drawer items
            TextField(
              controller: namecontroler,
              decoration: InputDecoration(
                prefix: Icon(Icons.person),
                labelText: 'Enter Your Name',
                border: InputBorder.none,
              ),
            ),
            SizedBox(height: 100),
            InkWell(
              onTap: () {
                AppUtils.storename(namecontroler.text);
                setState(() {});
              },
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 100),
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(10),
                ),

                height: 50,
                width: 150,

                child: Center(child: Text('Set Update')),
              ),
            ),
            SizedBox(height: 20),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 100),
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(10),
              ),

              height: 50,
              width: 150,

              child: Center(child: Text('Log Out')),
            ),
          ],
        ),
      ),
    );
  }
}
