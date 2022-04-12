import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              flex: 4,
              child: Container(
                height: MediaQuery.of(context).size.width,
                width: double.infinity,
                child: Image.network(
                  'https://cdn4.vectorstock.com/i/1000x1000/15/68/chef-holding-recipe-cookbook-abstract-card-vector-27721568.jpg',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Expanded(
              flex: 3,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text('Welcome to the recipe application.\nBienvenue dans l\'application de recette.', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold,), textAlign: TextAlign.center,),
                  SizedBox(height: 15,),
                  Text('Please sign up or log in.', style: TextStyle(fontSize: 18, fontStyle: FontStyle.italic), textAlign: TextAlign.center,),
                ],
              ),
            ),
            Expanded(
              flex: 2,
              child: Padding(
                padding: const EdgeInsets.only(left: 30.0, right: 30.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Container(
                      height: 55,
                      child: RaisedButton(
                        color: Colors.deepOrangeAccent,
                        textColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        elevation: 5,
                          onPressed: () {},
                          child: Text('Sign Up', style: TextStyle(fontSize: 18),),
                      ),
                    ),
                    SizedBox(height: 10),
                    Container(
                      height: 55,
                      child: RaisedButton(
                        padding: const EdgeInsets.only(left: 30.0, right: 30.0),
                        color: Colors.white,
                        textColor: Colors.black,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        elevation: 2,
                        onPressed: () {},
                        child: Text('Log In', style: TextStyle(fontSize: 18),),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
