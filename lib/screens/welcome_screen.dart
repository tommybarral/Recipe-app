import 'package:flutter/material.dart';
import '../screens/content_screen.dart';


class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  Widget authentificationButton(Color buttonColor, Color textColor, String buttonTitle, BuildContext context, Widget routeName) {
    return SizedBox(
      height: 55,
      child: RaisedButton(
        color: buttonColor,
        textColor: textColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        elevation: 5,
        onPressed: () => Navigator.of(context).push(MaterialPageRoute(builder: (_) {
          return routeName;
        })),
        child: Text(buttonTitle, style: const TextStyle(fontSize: 18),),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              flex: 4,
              child: SizedBox(
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
                    authentificationButton(Colors.deepOrangeAccent, Colors.white, 'Sign Up', context, const ContentScreen()),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                    authentificationButton(Colors.white, Colors.black, 'Log In', context, const ContentScreen()),
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
