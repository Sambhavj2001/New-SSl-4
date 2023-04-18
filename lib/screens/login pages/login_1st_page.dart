import 'package:flutter/material.dart';
import 'package:shopping_cos/constants.dart';
import 'package:shopping_cos/screens/home.dart';
import 'package:shopping_cos/screens/home_body.dart';
import 'package:shopping_cos/screens/login pages/components.dart';

class loginPage extends StatelessWidget {
  loginPage({Key? key}) : super(key: key);

  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: KPrimaryColor,
      body: Column(
        children: [
          SizedBox(height: 200),
          Center(
              child: Text(
            'Login page',
            style: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.bold,
            ),
          )),
          SizedBox(height: 20),
          MyTextField(
            controller: usernameController,
            hintText: 'Username',
            obscureText: false,
          ),
          SizedBox(height: 10),
          MyTextField(
            controller: passwordController,
            hintText: 'Password',
            obscureText: true,
          ),
          SizedBox(height: 10),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'Forget Password',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          MyButton(
            onTap: () => {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => HomeScreen()))
            },
          ),
          SizedBox(height: 40),
          Row(
            children: [
              Expanded(
                child: Divider(
                  thickness: 0.5,
                  color: Colors.white,
                ),
              ),
              Text('Or Sign In With'),
              Expanded(
                child: Divider(
                  thickness: 0.5,
                  color: Colors.white,
                ),
              )
            ],
          ),
          SizedBox(height: 50),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SquareTile(imagePath: 'images/1.jpg'),
                SizedBox(width: 10),
                SquareTile(imagePath: 'images/2.jpg')
              ],
            ),
          )
        ],
      ),
    );
  }
}
