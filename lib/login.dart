import 'package:blog_project/myHomePage.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text('Login')), body: Body());
  }
}

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  String name = "";
  TextEditingController controller = new TextEditingController();

  void click() {
    this.name = controller.text;
    Navigator.push(context,
        MaterialPageRoute(builder: (context) => MyHomePage(this.name)));
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Padding(
        padding: EdgeInsets.all(10),
        child: TextField(
          controller: controller,
          decoration: InputDecoration(
              prefixIcon: Icon(Icons.person),
              labelText: "Type your name:",
              border: OutlineInputBorder(
                  borderSide: BorderSide(width: 5, color: Colors.black)),
              suffixIcon: IconButton(
                icon: Icon(Icons.done),
                splashColor: Color.fromARGB(255, 59, 58, 58),
                tooltip: "Post Message",
                onPressed: this.click,
              )),
        ),
      ),
    );
  }
}
