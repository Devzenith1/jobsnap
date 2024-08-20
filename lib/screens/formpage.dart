import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../presentation/screens/homepage.dart';
import 'package:untitled/screens/homepage.dart';
import 'package:untitled/screens/jobpage.dart';

class myformpage extends StatelessWidget {
  const myformpage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var dropdown = Padding(
      padding: const EdgeInsets.only(
        top: 9,
      ),
      child: DropdownButton(
        underline: DropdownButtonHideUnderline(child: Container()),
        icon: const Icon(Icons.keyboard_arrow_down),
        elevation: 0,
        // autofocus: false,
        onChanged: (value) {},
        items: [],
      ),
    );
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Center(
              child: Padding(
                padding: EdgeInsets.only(top: 20),
                child: Text(
                  'Fill out your profile',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.black),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Stack(
                children: [
                  const CircleAvatar(
                    radius: 30,
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.deepPurpleAccent,
                          borderRadius: BorderRadius.circular(20)),
                      child: const Icon(
                        Icons.add,
                        color: Colors.white,
                        size: 20,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const Text('Upload your photo'),
            const SizedBox(
              height: 20,
            ),
            formregistration(
              formtext: 'Full name',
            ),
            formregistration(
              formtext: 'Age',
            ),
            formregistration(
              formtext: 'Find location',
              dropbutton: dropdown,
            ),
            formregistration(
              formtext: 'Email',
            ),
            formregistration(
              formtext: 'Phone number',
            ),
            Padding(
              padding: const EdgeInsets.only(right: 20, left: 20, top: 10),
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.black12),
                ),
                child: const Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.upload,
                        size: 30,
                        color: Colors.grey,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Upload your Cv',
                        style: TextStyle(color: Colors.grey),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  right: 20, left: 20, top: 20, bottom: 20),
              child: mybutton(
                buttontext: 'Save changes',
                onpressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const jobhomepage(),
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

class formregistration extends StatelessWidget {
  formregistration({
    super.key,
    this.formtext,
    this.dropbutton,
    this.prefix,
  });

  final formtext;
  final dropbutton;
  final prefix;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20, left: 20, bottom: 10),
      child: TextFormField(
        cursorColor: Colors.black,
        decoration: InputDecoration(
          hintText: formtext,
          hintStyle: TextStyle(fontSize: 15),
          prefixIcon: prefix,
          suffixIcon: dropbutton,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: const BorderSide(color: Colors.blueGrey),
          ),
        ),
      ),
    );
  }
}
