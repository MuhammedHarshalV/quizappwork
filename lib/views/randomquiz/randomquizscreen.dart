import 'package:flutter/material.dart';
import 'package:quizappwork/views/accountpage/account.dart';

import 'package:quizappwork/views/dummy/dummy.dart';
import 'package:quizappwork/views/dummy/indexclick.dart';
import 'package:quizappwork/views/selectedquiz/selectedquiz.dart';

class Random extends StatefulWidget {
  const Random({super.key});

  @override
  State<Random> createState() => _RandomState();
}

class _RandomState extends State<Random> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,

      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(padding: EdgeInsets.all(10)),
            SizedBox(height: 50),
            //top section
            _hicontainer(), SizedBox(height: 10),
            Center(
              child: Text(
                ' --------Let\'s play--------',
                style: TextStyle(
                  color: Colors.blue,
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),
              ),
            ),
            SizedBox(height: 20),
            //grid of selections
            GridView.builder(
              padding: EdgeInsets.all(20),
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: Dummy.selection.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisSpacing: 20,
                mainAxisSpacing: 20,
                crossAxisCount: 2,
              ),
              itemBuilder:
                  (context, index) => InkWell(
                    onTap: () {
                      Indexclick.gridclickindex = index;
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => Selectedquiz()),
                      );
                      setState(() {});
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.blueGrey,
                      ),

                      child: Padding(
                        padding: const EdgeInsets.all(15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              child: Icon(
                                Dummy.gridicon[index].icon,
                                color: index > 1 ? Colors.red : Colors.amber,

                                size: 100,
                              ),
                            ),
                            Text(
                              Dummy.grid[index],
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              '${Dummy.selection[index].length}  Questions',
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _hicontainer() {
    return Container(
      padding: EdgeInsets.all(10),

      width: double.infinity,

      child: Row(
        children: [
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Account()),
              );
            },
            child: Icon(Icons.person, color: Colors.amber),
          ),
          Spacer(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                'Hi, Player',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'Lets make this day productive',
                style: TextStyle(color: Colors.grey),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
