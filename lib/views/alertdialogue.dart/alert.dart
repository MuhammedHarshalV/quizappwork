import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quizappwork/controler/providercontroler.dart';

class ALertdialogueset extends StatelessWidget {
  const ALertdialogueset({
    super.key,
    required this.images,
    required this.userproviderwatch,
  });

  final List<String> images;
  final Providercontroler userproviderwatch;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.blueGrey,
      title: Center(
        child: Text('IMAGES', style: TextStyle(fontWeight: FontWeight.bold)),
      ),
      content: SizedBox(
        width: double.maxFinite,
        child: GridView.builder(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: 6,

          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            crossAxisCount: 3,
          ),
          itemBuilder:
              (context, index) => InkWell(
                onTap: () {
                  context.read<Providercontroler>().storeindex(index);
                },
                child: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(images[index]),
                      fit: BoxFit.fill,
                    ),
                  ),
                  child:
                      context.watch<Providercontroler>().imageindex == index
                          ? Column(
                            children: [
                              Spacer(),
                              Container(
                                color: Colors.green,
                                child: Text(
                                  'selected',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ],
                          )
                          : null,
                ),
              ),
        ),
      ),
      actions: [
        if (context.watch<Providercontroler>().imageindex != null)
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blue,
              foregroundColor: Colors.white,
            ),
            onPressed: () async {
              await context.read<Providercontroler>().storeimage(
                images[userproviderwatch.imageindex!],
              );
              Navigator.pop(context);
            },
            child: Text('Save'),
          ),
        ElevatedButton(
          style: ElevatedButton.styleFrom(foregroundColor: Colors.red),
          onPressed: () {
            context.read<Providercontroler>().deleteimage();
            Navigator.pop(context);
          },
          child: Text('Delete&Clear'),
        ),
      ],
    );
  }
}
