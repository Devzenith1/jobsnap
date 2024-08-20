import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:untitled/screens/bottomnavbar.dart';
import 'package:untitled/screens/formpage.dart';
import 'package:untitled/screens/variables.dart';

class jobhomepage extends StatelessWidget {
  const jobhomepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Row(
                    children: [
                      CircleAvatar(
                        radius: 25,
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Iveta Fork',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold)),
                          Text(
                            'HR Manager',
                            style: TextStyle(
                                color: Colors.grey,
                                fontSize: 13,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ],
                  ),
                  IconButton(
                      padding: const EdgeInsets.only(right: 0),
                      onPressed: () {},
                      icon: const Icon(
                        Icons.notifications,
                        color: Colors.black,
                      ))
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
              child: Text(
                'Find a job',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
            ),
            SizedBox(
              height: 60,
              child: Padding(
                padding: const EdgeInsets.only(right: 20),
                child: Row(
                  // mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: formregistration(
                        prefix: const Icon(
                          Icons.search_rounded,
                          color: Colors.black,
                        ),
                        formtext: 'Enter job title or keyword',
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(10)),
                      child: const Padding(
                        padding: EdgeInsets.all(11.0),
                        child: Icon(
                          Icons.filter_alt_rounded,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
              child: Text(
                'Promoted jobs',
                style: TextStyle(
                    color: Colors.black87,
                    fontWeight: FontWeight.bold,
                    fontSize: 15),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                jobcontainer(
                  color2: Colors.white,
                  textcolor: true,
                  color3: Colors.white,
                  text1: 'Peaple Partner',
                  text2: 'My company co.',
                  text3: 'Full-time/ Remotely',
                  text4: 'Senior Level.',
                  text5: '260k/ year.',
                  color: Colors.blue,
                ),
                const SizedBox(
                  height: 10,
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: Text(
                    'Because you are interested in HR',
                    style: TextStyle(
                        color: Colors.black87,
                        fontWeight: FontWeight.bold,
                        fontSize: 15),
                  ),
                ),
                ListView.builder(
                  scrollDirection: Axis.vertical,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: jobsfeild.length,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    final jobb = jobsfeild[index];
                    return Padding(
                      padding: const EdgeInsets.only(bottom: 20),
                      child: jobcontainer(
                        color3: jobb['companyname8'],
                        //  icons: jobb['companyname3'] as IconData,
                        color2: jobb['companyname6'],
                        textcolor: false,
                        color: jobb['companyname7'],
                        text1: jobb['companyname'] as String,
                        text2: jobb['companyname1'] as String,
                        text3: jobb['companyname2'] as String,
                        text4: jobb['companyname4'] as String,
                        text5: jobb['companyname5'] as String,
                      ),
                    );
                  },
                )
              ],
            ),

            // const Padding(
            //   padding: EdgeInsets.symmetric(vertical: 10),
            //   child: jobcontainer(),
            // ),
            // const Padding(
            //   padding: EdgeInsets.symmetric(vertical: 10),
            //   child: jobcontainer(),
            // ),
            // const Padding(
            //   padding: EdgeInsets.symmetric(vertical: 10),
            //   child: jobcontainer(),
            // ),
            // const Padding(
            //   padding: EdgeInsets.symmetric(vertical: 10),
            //   child: jobcontainer(),
            // ),
          ],
        ),
      ),
    );
  }
}

class jobcontainer extends StatelessWidget {
  const jobcontainer(
      {super.key,
      required this.text1,
      required this.text2,
      required this.text3,
      required this.text4,
      required this.text5,
      required this.color,
      required this.textcolor,
      this.color2,
      //required this.icons,
      this.color3});

  final String text1;
  final String text2;
  final String text3;
  final String text4;
  final String text5;
  final color;
  final color2;
  final color3;
  // final IconData icons;
  final bool textcolor;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(10),
            border: textcolor == false
                ? Border.all(color: Colors.black)
                : const Border.fromBorderSide(BorderSide.none)),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: color3,
                            borderRadius: BorderRadius.circular(10)),
                        child: const Padding(
                          padding: EdgeInsets.all(10.0),
                          child: Icon(
                            Icons.person,
                            size: 15,
                            color: Colors.black87,
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            text1,
                            style: TextStyle(
                                color: textcolor ? Colors.white : Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            text2,
                            style: TextStyle(
                              fontSize: 10,
                              color: textcolor ? Colors.white : Colors.black54,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      CupertinoIcons.bookmark_fill,
                      color: color2,
                      size: 15,
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8),
                child: Text(
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  text3,
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    color: textcolor ? Colors.white : Colors.black54,
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.black87,
                        borderRadius: BorderRadius.circular(20)),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 5),
                      child: Text(
                        overflow: TextOverflow.ellipsis,
                        text4,
                        style: const TextStyle(
                          fontSize: 11,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Text(
                      text5,
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: textcolor ? Colors.white : Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
