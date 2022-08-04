import 'package:flutter/material.dart';
import 'package:sabith_proj/Welcome_page.dart';

void main() {
  runApp(MaterialApp(home: MyReg_Page()));
}

class MyReg_Page extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MyReg_pageState();
}

class _MyReg_pageState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.cyan,
          title: Center(
              child: Text(
            'Registration Page',
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.bold, fontSize: 25),
          )),
        ),
        body: details());
  }
}

class details extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _detailsState();
}

class _detailsState extends State {
  TextEditingController _name = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 80, left: 35),
          child: SizedBox(
            width: 300,
            height: 60,
            child: TextField(
                decoration: InputDecoration(
              prefixIcon: Icon(Icons.email),
              fillColor: Colors.grey.shade300,
              filled: true,
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
              hintText: 'Email or Phone',
            )),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 30, left: 35),
          child: SizedBox(
            width: 300,
            height: 60,
            child: TextField(
                controller: _name,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.person),
                  fillColor: Colors.grey.shade300,
                  filled: true,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)),
                  hintText: 'UserName',
                )),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 30, left: 35),
          child: SizedBox(
            width: 300,
            height: 60,
            child: TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                  fillColor: Colors.grey.shade300,
                  filled: true,
                  prefixIcon: Icon(Icons.password),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)),
                  hintText: 'Password',
                )),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 20, left: 30),
          child: ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=> Welcome_Page(name: _name.text)),);
              },
              child: Text(
                'Register',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontSize: 25),
              )),
        )
      ],
    );
  }
}
