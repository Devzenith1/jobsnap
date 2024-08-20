import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:untitled/screens/formpage.dart';
import 'package:untitled/screens/homepage.dart';

class jobcategory extends StatelessWidget {
  const jobcategory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 20),
              child: Text(
                'Select your jobs category',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 18),
              ),
            ),
            const Text(
              'Select one or more categories suitable for your search',
              style: TextStyle(color: Colors.grey, fontSize: 13),
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
              child: GridView.builder(
                itemCount: 8,
                physics: const AlwaysScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisSpacing: 10,
                    crossAxisCount: 2,
                    mainAxisSpacing: 10,
                    mainAxisExtent: 150),
                itemBuilder: (context, index) {
                  return const gridviewpart();
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 20, top: 10),
              child: mybutton(
                buttontext: 'Find Jobs',
                onpressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => myformpage(),
                      ));
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class gridviewpart extends StatelessWidget {
  const gridviewpart({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.grey[100],
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: Colors.blueAccent, width: 2)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            decoration: BoxDecoration(
                color: Colors.blueAccent,
                borderRadius: BorderRadius.circular(50)),
            child: const Padding(
              padding: EdgeInsets.all(5),
              child: Icon(Icons.phone_bluetooth_speaker_outlined),
            ),
          ),
          const Text(
            'Marketing',
            style: TextStyle(
                // overflow: TextOverflow.ellipsis,
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 13),
          )
        ],
      ),
    );
  }
}
