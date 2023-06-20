import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class MySignUpPage extends StatelessWidget {
  const MySignUpPage({super.key,});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Container(
      height: height,
      width: width,
      color: Colors.black,
      child: SafeArea(
        child:  Padding(
            padding: EdgeInsets.symmetric(
              horizontal: width * 0.1,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Sign up',
                  style: TextStyle(
                    letterSpacing: 2,
                    color: Colors.white,
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: height * 0.05,
                ),
                TextFormField(
                    decoration: const InputDecoration(
                      focusColor: Colors.white,
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.white,
                        ),
                      ),
                      labelText: 'Name',
                      labelStyle: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                    ),
                const SizedBox(),
                TextFormField(
                  decoration: const InputDecoration(
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.white,
                      ),
                    ),
                    labelText: 'Email',
                    labelStyle: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                ),
                const SizedBox(),
                TextFormField(
                  decoration: const InputDecoration(
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.white,
                      ),
                    ),
                    labelText: 'Password',
                    labelStyle: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                ),
                const SizedBox(),
                TextFormField(
                  decoration: const InputDecoration(
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.white,
                      ),
                    ),
                    labelText: 'Name',
                    labelStyle: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                ),
                const SizedBox(),
                TextFormField(
                  decoration: const InputDecoration(
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.white,
                      ),
                    ),
                    labelText: 'Confirm Password',
                    labelStyle: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                ),
                SizedBox(
                  height: height * 0.07,
                ),
                Center(
                  child: SizedBox(
                    height: height * 0.05,
                    width: width * 0.3,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50),
                        ),
                      ),
                      onPressed: () {},
                      child: const Text(
                        'Sign up',
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: height * 0.02,
                ),
                const Center(
                  child: Text(
                    'I am already a number',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
      
      ),
    );

    /* return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.greenAccent,
        resizeToAvoidBottomInset: false,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            FittedBox(
              child: Padding(
                padding: EdgeInsets.symmetric(
                  vertical: height * 0.033,
                  horizontal: width * 0.02,
                ),
          
                child: Text(
                  'Sign up',
                  style: TextStyle(
                    letterSpacing: 2,
                    color: Colors.white,
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            TextFormField(
              decoration: const InputDecoration(
                suffixIcon: Icon(
                  Icons.person,
                  color: Colors.white,
                ),
                labelText: 'Email',
                labelStyle: TextStyle(
                  color: Colors.grey,
                ),
              ),
            ),
            TextFormField(
              decoration: const InputDecoration(
                suffixIcon: Icon(
                  Icons.person,
                  color: Colors.white,
                ),
                labelText: 'Email',
                labelStyle: TextStyle(
                  color: Colors.grey,
                ),
              ),
            ),
            TextFormField(
              decoration: const InputDecoration(
                suffixIcon: Icon(
                  Icons.person,
                  color: Colors.white,
                ),
                labelText: 'Email',
                labelStyle: TextStyle(
                  color: Colors.grey,
                ),
              ),
            ),
            TextFormField(
              decoration: const InputDecoration(
                suffixIcon: Icon(
                  Icons.person,
                  color: Colors.white,
                ),
                labelText: 'Email',
                labelStyle: TextStyle(
                  color: Colors.grey,
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text('Sign up'),
            ),
            Text('I am a already a number'),
          ],
        ),
      ),
    );*/
  }
}
