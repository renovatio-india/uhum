import 'package:flutter/material.dart';


class Registration extends StatefulWidget {
  @override
  _RegistrationState createState() => _RegistrationState();
}

class _RegistrationState extends State<Registration> {
  final _formKey = GlobalKey<FormState>();

  

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top:300,left:10,right: 10),
      child: Form(
        key: _formKey,
        child: Column(
          children: <Widget>[
            SizedBox(height: 20.0),
            Container(
              padding: EdgeInsets.only(left:20),
              decoration: BoxDecoration(
                color: Colors.yellow[100],
                borderRadius: BorderRadius.circular(100),
              ),
              
              child: TextFormField(
                decoration: InputDecoration(
                    border: InputBorder.none, hintText: 'Full Name'),
                    validator: (val) => val.isEmpty ? 'Enter full name' : null,
                     onChanged: (val){
                     
                    },
              ),
            ),
            SizedBox(height: 20.0),
            Container(
              padding: EdgeInsets.only(left:20),
              decoration: BoxDecoration(
                color: Colors.deepPurple[100],
                borderRadius: BorderRadius.circular(100),
              ),
              
              child: TextFormField(
                decoration: InputDecoration(
                    border: InputBorder.none, hintText: 'Email Address'),
                     validator: (val) => val.isEmpty ? 'Enter  Email' : null,
                    onChanged: (val){
                     
                    },
              ),
            ),
            SizedBox(height: 20.0),
            Container(
              padding: EdgeInsets.only(left:20),
              decoration: BoxDecoration(
                color: Colors.blue[100],
                borderRadius: BorderRadius.circular(100),
              ),
             
              child: TextFormField(
                decoration:
                    InputDecoration(border: InputBorder.none, hintText: 'Age'),
                    obscureText: true,
                     validator: (val) => val.isEmpty ? 'Enter Age':null,
                     onChanged: (val){
                     
                    },
              ),
            ),
            SizedBox(height: 20.0),
            RaisedButton(
                shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                    ),
              child: Text('Submit'),
              color: Colors.lightBlueAccent,
              onPressed: () async {
               
                }
              
            ),
          ],
        ),
      ),
    );
  }
}
