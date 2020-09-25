import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SignIn extends StatefulWidget {

   final Function toggleView;
  SignIn({ this.toggleView });


  @override
  _SignIn createState() => _SignIn();
}

class _SignIn extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Spacer(),
              Text(
                'Verify your phone',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                ),
              ),
              Spacer(),
              Container(
                height: size.height * 0.06,
                width: size.width * 0.8,
                decoration: BoxDecoration(
                    color: Colors.orange[100],
                    borderRadius: BorderRadius.circular(30),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          offset: Offset(0, 3),
                          blurRadius: 7,
                          spreadRadius: 3),
                    ]),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 8.0, horizontal: 16.0),
                  child: TextField(
                    // textAlign: TextAlign.center,
                    keyboardType: TextInputType.number,
                    inputFormatters:[WhitelistingTextInputFormatter.digitsOnly],
                    decoration: InputDecoration(
                        hintText: '10-digit Mobile Number',
                        hintStyle: TextStyle(
                          fontSize: 12,
                          color: Colors.black,
                        ),
                        border: InputBorder.none),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                child: Container(
                  height: size.height * 0.06,
                  width: size.width * 0.8,
                  // alignment: Alignment.topLeft,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(30),
                    child: FlatButton(
                      color: Colors.blue,
                      onPressed: () {},
                      child: Text(
                        'Continue',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Spacer(),
               Container(
                  child: Row(
                    children: <Widget>[
                      Text('Does not have account?'),
                      FlatButton(
                        textColor: Colors.blue,
                        child: Text(
                          'Sign up',
                          style: TextStyle(fontSize: 15),
                        ),
                        onPressed: () {
                          //signup screen
                          widget.toggleView();
                        },
                      )
                    ],
                    mainAxisAlignment: MainAxisAlignment.center,
                )),
                
            ],
          ),
        ),
      ),
    );
  }
}