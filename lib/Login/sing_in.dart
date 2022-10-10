import 'package:cream/Home/Home_page.dart';
import 'package:flutter/material.dart';
import 'package:cream/Custom.dart';
import 'package:cream/CustomTextFormField.dart';

import 'package:cream/Login/sing_up.dart';
import 'package:cream/Thenme.dart';

class Sing_in extends StatefulWidget {
  const Sing_in({super.key});

  @override
  State<Sing_in> createState() => _Sing_inState();
}

class _Sing_inState extends State<Sing_in> {
  bool isPassword = true;
  void togglePassword() {
    setState(() {
      isPassword = !isPassword;
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        margin: const EdgeInsets.only(top: 50),
        child: Column(
          children: [
            SizedBox(
              height: 60,
            ),
            Container(
              height: 50,
              width: 50,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                image: AssetImage('assets/logo1.png'),
              )),
            ),
            const SizedBox(
              height: 16,
            ),
            Text(
              "Welcome",
              style: interTextStyle.copyWith(
                color: whiteColor,
                fontSize: 20,
                fontWeight: medium,
              ),
            ),
            const SizedBox(
              height: 4,
            ),
            Text(
              'Sign In to Your Account',
              style: interTextStyle.copyWith(
                fontSize: 16,
                color: greyColor,
              ),
            ),
          ],
        ),
      );
    }

    Widget NameInput() {
      return Container(
        margin: const EdgeInsets.only(
          top: 16,
        ),
        child: TextFormField(
          style: interTextStyle.copyWith(
            color: whiteColor,
          ),
          onChanged: (value) {},
          cursorColor: yellowColor,
          obscureText: isPassword,
          decoration: InputDecoration(
            hintText: 'Username',
            hintStyle: interTextStyle.copyWith(
              color: greyColor,
              fontSize: 14,
              fontWeight: light,
            ),
            prefixIcon: const Icon(
              Icons.person,
              color: Colors.white,
            ),
            enabledBorder: const UnderlineInputBorder(
              borderSide: BorderSide(
                color: greyColor,
              ),
            ),
            focusedBorder: const UnderlineInputBorder(
              borderSide: BorderSide(color: yellowColor),
            ),
            focusColor: yellowColor,
          ),
        ),
      );
    }

    Widget passwordInput() {
      return Container(
        margin: const EdgeInsets.only(
          top: 16,
        ),
        child: TextFormField(
          style: interTextStyle.copyWith(
            color: whiteColor,
          ),
          onChanged: (value) {},
          cursorColor: yellowColor,
          obscureText: isPassword,
          decoration: InputDecoration(
            hintText: 'Password',
            hintStyle: interTextStyle.copyWith(
              color: greyColor,
              fontSize: 14,
              fontWeight: light,
            ),
            prefixIcon: const Icon(
              Icons.key_rounded,
              color: Colors.white,
            ),
            suffixIcon: IconButton(
              onPressed: togglePassword,
              icon: Icon(
                isPassword
                    ? Icons.visibility_outlined
                    : Icons.visibility_off_outlined,
                color: greyColor,
              ),
            ),
            enabledBorder: const UnderlineInputBorder(
              borderSide: BorderSide(
                color: greyColor,
              ),
            ),
            focusedBorder: const UnderlineInputBorder(
              borderSide: BorderSide(color: yellowColor),
            ),
            focusColor: yellowColor,
          ),
        ),
      );
    }

    Widget forgotPassword() {
      return Container(
        width: double.infinity,
        margin: const EdgeInsets.only(top: 16),
        child: Align(
          alignment: Alignment.centerRight,
          child: GestureDetector(
            onTap: () {},
            child: Text(
              'Forget Password?',
              style: interTextStyle.copyWith(
                color: yellowColor,
              ),
            ),
          ),
        ),
      );
    }

    Widget buttonSignIn() {
      return Container(
        margin: const EdgeInsets.only(
          top: 180,
        ),
        child: Center(
          child: Column(
            children: [
              ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: Colors.white),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Home_page(),
                        ));
                  },
                  child: Text(
                    "OK",
                    style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
                  )),
            ],
          ),
        ),
      );
    }

    Widget dontHaveAccount() {
      return Container(
        margin: const EdgeInsets.only(
          top: 10,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Dont Have Account? ',
              style: interTextStyle.copyWith(
                color: whiteColor,
                fontWeight: light,
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: ((context) => Sing_up())));
              },
              child: Text(
                'Sign Up',
                style: interTextStyle.copyWith(
                  color: yellowColor,
                  fontWeight: light,
                ),
              ),
            )
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: backgroundColor,
      body: ListView(
        padding: EdgeInsets.symmetric(
          horizontal: defaultMargin,
        ),
        children: [
          header(),
          NameInput(),
          passwordInput(),
          forgotPassword(),
          buttonSignIn(),
          dontHaveAccount(),
        ],
      ),
    );
  }
}
