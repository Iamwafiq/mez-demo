import 'dart:io';
import 'package:flutter/material.dart';
import 'package:mi_card/screens/webview_screen.dart';
import 'package:share_plus/share_plus.dart';

class LoginScreen extends StatelessWidget {

  @override
  Widget build(BuildContext ctxt) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: Row(
          mainAxisAlignment:MainAxisAlignment.end,
          children:[
            IconButton(
              onPressed: () {
                Share.share('Share this Page https://mez.ink/sign-in', subject: 'Share');
              }, 
              tooltip: 'Share',
              icon: Icon(
                Icons.share,
                color: Colors.white,
                size: 24.0,
              ),
            ) 
          ]
        ),
        backgroundColor: Colors.transparent,
        bottomOpacity: 0.0,
        elevation: 0.0,
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                child:  Text(
                  'Continue with', 
                  style: TextStyle(
                    fontSize:16,
                    color: Colors.white,
                    fontFamily: 'Lato'
                  ),
                ),
              ), 
              Container(
                padding: EdgeInsets.symmetric(horizontal: 25, vertical: 2),
                width: double.infinity,
                child: OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    primary: Colors.black87,
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                      ctxt,
                      new MaterialPageRoute(builder: (ctxt) => new WebviewScreen()),
                    );
                   },
                  child: (Platform.isIOS)?
                    Text(
                      'Sign in with Apple',
                      style: TextStyle(
                        color: Colors.black54,
                        fontFamily: 'Lato',
                        fontSize: 16,
                      ),
                    )
                  : Container(),
                )  
              ),
            ],
          )
        ),
      ),
    );
  }
}