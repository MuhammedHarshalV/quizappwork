import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:quizappwork/controler/providercontroler.dart';

class Account extends StatefulWidget {
  const Account({super.key});

  @override
  State<Account> createState() => _AccountState();
}

class _AccountState extends State<Account> {
  List<String> images = [
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS0YTTsLcKxLdEix8xrjrh6Vu32JZdoGWuNwg&s',
    'https://www.shutterstock.com/shutterstock/photos/527480839/display_1500/stock-vector-isolated-man-cartoon-design-527480839.jpg',
    'https://www.shutterstock.com/shutterstock/photos/2303601041/display_1500/stock-vector-smiling-student-in-modern-sportswear-over-white-2303601041.jpg',
    'https://www.shutterstock.com/shutterstock/photos/1918309769/display_1500/stock-photo-beautiful-gorgeous-s-mid-aged-mature-woman-looking-at-camera-isolated-on-white-mature-old-lady-1918309769.jpg',
    'https://www.shutterstock.com/shutterstock/photos/2099982595/display_1500/stock-photo-smiling-middle-aged-african-american-woman-with-orange-headscarf-beautiful-black-woman-in-casual-2099982595.jpg',
    'https://www.shutterstock.com/shutterstock/photos/2477779589/display_1500/stock-photo-portrait-of-a-successful-business-woman-in-sui-2477779589.jpg',
  ];
  TextEditingController namecontroler = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final userprovider = context.read<Providercontroler>();
    final userproviderwatch = context.watch<Providercontroler>();
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
                        backgroundImage: NetworkImage(
                          context.watch<Providercontroler>().userimage!,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        userproviderwatch.username!,
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    ],
                  ),
                  Spacer(),
                  IconButton(
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            backgroundColor: Colors.blueGrey,
                            title: Center(
                              child: Text(
                                'IMAGES',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ),
                            content: SizedBox(
                              height: 150,
                              width: double.maxFinite,
                              child: GridView.builder(
                                itemCount: 6,

                                gridDelegate:
                                    SliverGridDelegateWithFixedCrossAxisCount(
                                      crossAxisSpacing: 10,
                                      mainAxisSpacing: 10,
                                      crossAxisCount: 3,
                                    ),
                                itemBuilder:
                                    (context, index) => Expanded(
                                      child: InkWell(
                                        onTap: () {
                                          context
                                              .read<Providercontroler>()
                                              .storeindex(index);
                                        },
                                        child: Container(
                                          decoration: BoxDecoration(
                                            image: DecorationImage(
                                              image: NetworkImage(
                                                images[index],
                                              ),
                                              fit: BoxFit.fill,
                                            ),
                                          ),
                                          child:
                                              context
                                                          .watch<
                                                            Providercontroler
                                                          >()
                                                          .imageindex ==
                                                      index
                                                  ? Center(
                                                    child: Text(
                                                      'selected',
                                                      style: TextStyle(
                                                        color: Colors.green,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                      ),
                                                    ),
                                                  )
                                                  : null,
                                        ),
                                      ),
                                    ),
                              ),
                            ),
                            actions: [
                              if (context
                                      .watch<Providercontroler>()
                                      .imageindex !=
                                  null)
                                ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.blue,
                                    foregroundColor: Colors.white,
                                  ),
                                  onPressed: () async {
                                    await context
                                        .read<Providercontroler>()
                                        .storeimage(
                                          images[userproviderwatch.imageindex!],
                                        );
                                  },
                                  child: Text('Save'),
                                ),
                              ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  foregroundColor: Colors.red,
                                ),
                                onPressed: () {},
                                child: Text('Delete&Clear'),
                              ),
                            ],
                          );
                        },
                      );
                    },
                    icon: Icon(Icons.camera_alt_outlined, color: Colors.white),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),

            // Drawer items
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: TextField(
                controller: namecontroler,
                decoration: InputDecoration(
                  prefix: Icon(Icons.person),
                  labelText: 'Enter Your Name',
                  border: InputBorder.none,
                ),
              ),
            ),
            SizedBox(height: 100),
            InkWell(
              onTap: () async {
                if (namecontroler.text.isNotEmpty) {
                  await userprovider.storename(namecontroler.text);
                }
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
