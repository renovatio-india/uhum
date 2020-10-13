import 'package:flutter/material.dart';

class Registration extends StatefulWidget {
  final Function toggleView;
  Registration({this.toggleView});

  @override
  _RegistrationState createState() => _RegistrationState();
}

class _RegistrationState extends State<Registration> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        padding: EdgeInsets.only(bottom: 250),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
                child: Image.asset(
              'assets/Signup.jpg',
              fit: BoxFit.contain,
              height: 175,
              width: 200,
            )),
            SizedBox(height: 12.0),
            Container(
              padding: EdgeInsets.only(left: 18),
              width: size.width * 0.8,
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Full Name',
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ),
            SizedBox(height: 2),
            Container(
              padding: EdgeInsets.only(left: 15),
              height: size.height * 0.05,
              width: size.width * 0.8,
              child: TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide(color: Colors.blue[700])),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(12)),
                    borderSide: BorderSide(
                      width: 1,
                      color: Colors.blue[700],
                    ),
                  ),
                ),
                validator: (val) => val.isEmpty ? 'Enter full name' : null,
                onChanged: (val) {},
              ),
            ),
            SizedBox(height: 12),
            Container(
              padding: EdgeInsets.only(left: 18),
              width: size.width * 0.8,
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Phone Number',
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ),
            SizedBox(height: 2),
            Container(
              padding: EdgeInsets.only(left: 15),
              height: size.height * 0.05,
              width: size.width * 0.8,
              child: TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide(color: Colors.blue[700])),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(12)),
                    borderSide: BorderSide(
                      width: 1,
                      color: Colors.blue[700],
                    ),
                  ),
                ),
                validator: (val) => val.isEmpty ? 'Enter  Email' : null,
                onChanged: (val) {},
              ),
            ),
            SizedBox(height: 12),
            Container(
              padding: EdgeInsets.only(left: 18),
              width: size.width * 0.8,
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Age',
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ),
            SizedBox(height: 2),
            Container(
              padding: EdgeInsets.only(left: 15),
              height: size.height * 0.05,
              width: size.width * 0.8,
              child: TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide(color: Colors.blue[700])),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(12)),
                    borderSide: BorderSide(
                      width: 1,
                      color: Colors.blue[700],
                    ),
                  ),
                ),
                obscureText: true,
                validator: (val) => val.isEmpty ? 'Enter Phone No.' : null,
                onChanged: (val) {},
              ),
            ),
            SizedBox(height: 18.0),
            Container(
              padding: EdgeInsets.only(left: 15),
              height: size.height * 0.06,
              width: size.width * 0.8,
              child: RaisedButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                  child: Text(
                    'Submit',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  color: Colors.blue[700],
                  onPressed: () async {}),
            ),
            Container(
                padding: EdgeInsets.only(left: 28),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Align(
                      alignment: Alignment.center,
                      child: Text(
                        'Already have an account?',
                        style: TextStyle(color: Colors.grey),
                      ),
                    ),
                    FlatButton(
                      padding: EdgeInsets.only(right: 38),
                      textColor: Colors.blue,
                      child: Text(
                        'Log in',
                        style: TextStyle(color: Colors.black),
                      ),
                      onPressed: () {
                        //signup screen
                        widget.toggleView();
                      },
                    )
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
