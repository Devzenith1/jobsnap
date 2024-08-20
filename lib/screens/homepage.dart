import 'package:flutter/material.dart';
import 'package:untitled/presentation/screens/jobcategory.dart';
import 'package:untitled/screens/jobcategory.dart';

class myhomepage extends StatelessWidget {
  const myhomepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'JOBSNAP',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.4,
                child: Center(child: Image.asset('lib/images/briefcase.png')),
              ),
              RichText(
                text: const TextSpan(
                  text: 'Over',
                  style: TextStyle(
                      color: Colors.black87,
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                  children: [
                    TextSpan(
                      text: ' 5000 jobs',
                      style: TextStyle(
                          color: Colors.blue,
                          fontSize: 25,
                          fontWeight: FontWeight.bold),
                    ),
                    TextSpan(
                      text: ' are waiting for you',
                      style: TextStyle(
                          color: Colors.black87,
                          fontSize: 25,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              mybutton(
                buttontext: ' Start Searching',
                onpressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => jobcategory(),
                      ));
                },
              )
            ]),
      ),
    );
  }
}

class mybutton extends StatelessWidget {
  const mybutton({
    super.key,
    this.buttontext,
    this.onpressed,
  });
  final buttontext;
  final onpressed;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: onpressed,
        style: ElevatedButton.styleFrom(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          backgroundColor: Colors.black,
        ),
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Text(
            buttontext,
            style: const TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
