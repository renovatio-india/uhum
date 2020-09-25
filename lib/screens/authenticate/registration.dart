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
      body: Form(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: 15.0),
            Container(
              padding: EdgeInsets.only(left:15),
              height: size.height * 0.06,
                width: size.width * 0.8,
              decoration: BoxDecoration(
                color: Colors.yellow[100],
                borderRadius: BorderRadius.circular(100),
                 boxShadow: [
                      BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          offset: Offset(0, 3),
                          blurRadius: 7,
                          spreadRadius: 3),
                    ],
              ),
              child: TextFormField(
                decoration: InputDecoration(
                    border: InputBorder.none, hintText: 'Full Name'),
                validator: (val) => val.isEmpty ? 'Enter full name' : null,
                onChanged: (val) {},
              ),
            ),
            SizedBox(height: 15.0),
            Container(
              padding: EdgeInsets.only(left:15),
              height: size.height * 0.06,
                width: size.width * 0.8,
              decoration: BoxDecoration(
                color: Colors.deepPurple[100],
                borderRadius: BorderRadius.circular(100),
                 boxShadow: [
                      BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          offset: Offset(0, 3),
                          blurRadius: 7,
                          spreadRadius: 3),
                    ],
              ),
              child: TextFormField(
                decoration: InputDecoration(
                    border: InputBorder.none, hintText: 'Email Address'),
                validator: (val) => val.isEmpty ? 'Enter  Email' : null,
                onChanged: (val) {},
              ),
            ),
            SizedBox(height: 10.0),
            Container(
              padding: EdgeInsets.only(left:15),
              height: size.height * 0.06,
                width: size.width * 0.8,
              decoration: BoxDecoration(
                color: Colors.blue[100],
                
                borderRadius: BorderRadius.circular(100),
                 boxShadow: [
                      BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          offset: Offset(0, 3),
                          blurRadius: 7,
                          spreadRadius: 3),
                    ],
              ),
              child: TextFormField(
                decoration:
                    InputDecoration(border: InputBorder.none, hintText: 'Phone Number'),
                obscureText: true,
                validator: (val) => val.isEmpty ? 'Enter Phone No.' : null,
                onChanged: (val) {},
              ),
            ),
            SizedBox(height: 15.0),
             Container(
              padding: EdgeInsets.only(left:15),
              height: size.height * 0.06,
                width: size.width * 0.8,
              decoration: BoxDecoration(
                color: Colors.orange[100],
                borderRadius: BorderRadius.circular(100),
                 boxShadow: [
                      BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          offset: Offset(0, 3),
                          blurRadius: 7,
                          spreadRadius: 3),
                    ],
              ),
              child: TextFormField(
                decoration:
                    InputDecoration(border: InputBorder.none, hintText: 'Age'),
                obscureText: true,
                validator: (val) => val.isEmpty ? 'Enter Age' : null,
                onChanged: (val) {},
              ),
            ),
            SizedBox(height: 15.0),
            Container(
               height: size.height * 0.06,
                width: size.width * 0.8,
              child: RaisedButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  child: Text('Submit',style: TextStyle(
                          color: Colors.white,
                        ),),
                  color: Colors.blue,
                  onPressed: () async {}),
            ),
            SizedBox(height: 15.0),
            Container(
                child: Row(
              children: <Widget>[
                Text('Already have an account?'),
                FlatButton(
                  textColor: Colors.blue,
                  child: Text(
                    'Log in',
                    style: TextStyle(fontSize: 15),
                  ),
                  onPressed: () {
                    //signup screen
                    widget.toggleView();
                  },
                )
              ],
              mainAxisAlignment: MainAxisAlignment.center,
            ))
          ],
        ),
      ),
    );
  }
}
