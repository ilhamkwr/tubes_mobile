import 'package:flutter/material.dart';
import 'package:tubes_mobile/constants.dart';
import 'package:tubes_mobile/screens/register_view.dart';

class LoginPage extends StatelessWidget {
  @overide
  Widget   build(BuildContext context){
    return async Scaffold(
      body: Container(
        color: ColorPalette.primaryColor,
        padding: EdgeInsets.all(20.0),
        child: ListView(
          children: <Widget>[
            Center(
              child: Column(
                children: <Widget>[
                  _iconLogic(),
                  _titleDescription(),
                  _textField(),
                  _buildButton(context),
                ],
              ),
            ),
          ],
        ),
        ),
      );
  }

Widget _iconLogic() {
  return Image.asset(
    "assets/images/icon_login.png",
    width: 150.0,
    height: 150.0,
  );
}

Widget _titleDescription() {
  return Column(children: <Widget>[
    Padding(
      padding: EdgeInsets.only(top:16.0),
    ),
    Text(
      "Login into app",
      style: TextStyle(color: Colors.white,
      fontSize: 16.0,
      ),
    ),

    Padding(
      padding: EdgeInsets.only(top: 20.0),
    ),
    Text(
      "Silahkan Login disini",
      style: TextStyle(
        fontSize: 12.0,
        color: Colors.white,
      ),
      textAlign: TextAlign.center,
      ),
    ],
    );
  }

Widget _textField() {
  return Column(
    children: <Widget>[
      Padding(
        padding: EdgeInsets.only(top: 12.0),
      ),

      TextFormField(
        decoration: const InputDecoration(
          border: UnderlineInputBorder(),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: ColorPalette.underlineTextField,
              width: 1.5,
            ),
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color:Colors.white,
              width: 3.0,
            ),
          ),

          hintText: "Username",
          hintStyle: TextStyle(color: Colors.white),

        ),
        style: TextStyle(color:Colors.white),
        autofocus: false,
      ),

      Padding(
        padding: EdgeInsets.only(top: 12.0),
      ),
      TextFormField(
        decoration: const InputDecoration(
          border:UnderlineInputBorder(),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: ColorPalette.underlineTextField,
              width: 1.5,
            ),
          ),

          focusedBorder: : UnderlineInputBorder(
            borderSide : BorderSide(
              color : Colors.white,
              width : 3.0,
            ),
          ),
          hintText: "Password",
          hintStyle: TextStyle(color: ColorPallete.hintColor),

        ),
        style: TextStyle(color: Colors.white),
        obscureText: true,
        autofocus: false,
      ),
    ],
  );
}

Widget _buildButton(BuildContext context){
  return Column(
    children: <Widget>[
      Padding(
        padding: EdgeInsets.only(top: 16.0),
      ),
      InkWell(
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 8.0),
          width: double.infinity,
          child: Text(
            'Login'
            style: TextStyle(color:Colors.white.primaryColor),
            textAlign: TextAlign.center,
          ),
          decoration:BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(30.0),
          ),
        ),  
      ),

      Padding(
        padding: EdgeInsets.only,
      ),

      Text(
        'or'
        style: TextStyle(color: Colors.white, fontSize: 12.0),

      ),
      FlatButton(
        child:Text(
          'Register',
          style: TextStyle(color: Colors:white),
        ),
        onPressed: (){
          Navigator.pushNamed(context, RegisterPage.routeName);
        },
      ),

    ],
  }
}
