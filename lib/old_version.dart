/* WELCOME-SCREEN
import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(32.5),
        child: ListView(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.1,
            ),
            Container(
              height: 213,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage('https://cdn4.vectorstock.com/i/1000x1000/15/68/chef-holding-recipe-cookbook-abstract-card-vector-27721568.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
            ),
            const Text(
              'Welcome Screen',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500, color: Color(0xFF0E0E2D),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.01,
            ),
            const Text(
              'Welcome Subtitle Screen',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400,
              ),
            ),
            Container(
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(26.5),
                gradient: LinearGradient(colors: [Color(0xFFf6925c), Color(0xFFf37552),], begin: Alignment.topCenter, end: Alignment.bottomCenter),
              ),
              child: Center(child: Text('Sign Up', style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w600, color: Colors.white),)),
            ),
            Container(
              height: 50,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(26.5),
                  color: Colors.white,
              ),
              child: Center(child: Text('Log In', style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w600),)),
            ),
          ],
        ),
      ),
    );
  }
}
*/


