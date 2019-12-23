import 'package:flutter/material.dart';
import 'package:raitapp/network/rait_api.dart';
import 'package:raitapp/ui/pages/app_theme.dart';
import 'package:raitapp/ui/pages/explore_page.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController passwordController;
  TextEditingController rollNoController;
  RaitApi raitApi = new RaitApi();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF9e1c31),
        title: Text("Rait App"),
      ),
      body: Container(
        padding: EdgeInsets.all(8.0),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset("assets/images/Rait_new_logo_png.png"),
            TextFormField(
              controller: rollNoController,
              decoration: InputDecoration(
                  hintText: "Roll no /Srdn",
                  labelStyle:
                      TextStyle(fontFamily: 'Baservville', fontSize: 18.0),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15.0))),
            ),
            SizedBox(
              height: 30,
            ),
            TextFormField(
              obscureText: true,
              controller: passwordController,
              decoration: InputDecoration(
                hintText: "Password",
                labelStyle:
                    TextStyle(fontFamily: 'Baskervville', fontSize: 18.0),
                suffixIcon: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.remove_red_eye,
                    color: Colors.black,
                  ),
                ),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15.0)),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            RaisedButton(
              color: AppTheme.crimson,
              onPressed: () async {
                String rollNo = rollNoController.text;
                String password = passwordController.text;
                bool valid = await raitApi.checkLogin(rollNo, password);
                if (valid)
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (_) =>
                              Explore(rollNo: rollNo, password: password)));
              },
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0)),
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Text(
                  "Login",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18.0,
                      fontFamily: 'Cinzel'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  // ignore: must_call_super
  void initState() {
    rollNoController = new TextEditingController();
    passwordController = new TextEditingController();
  }
}
