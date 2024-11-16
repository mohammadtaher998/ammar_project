import 'package:ammar_project/Pages/MainScreen.dart';
import 'package:ammar_project/Pages/SignUpScreen.dart';
import 'package:ammar_project/Users_page/home.dart';
import 'package:flutter/material.dart';
import '../customDesign/CustomButton.dart';
import '../customDesign/CustomTextField.dart';

class SignInScreen extends StatefulWidget {
  @override
  _SignInScreenState createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  bool isEmailSignIn = true; // Controls whether to use email or phone
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  String _emailError = '';
  String _phoneError = '';
  String _passwordError = '';

  void toggleSignInMethod() {
    setState(() {
      isEmailSignIn = !isEmailSignIn; // Switch between email and phone
      _emailError = '';
      _phoneError = '';
      _passwordError = '';
    });
  }

  bool _validateEmail(String email) {
    String pattern = r'^[^@]+@[^@]+\.[^@]+$';
    RegExp regex = RegExp(pattern);
    return regex.hasMatch(email);
  }

  bool _validatePassword(String password) {
    String pattern = r'^(?=.*[A-Z])(?=.*\d).{8,}$';
    RegExp regex = RegExp(pattern);
    return regex.hasMatch(password);
  }

  void _signIn() {
    String email = _emailController.text;
    String phone = _phoneController.text;
    String password = _passwordController.text;

    setState(() {
      _emailError = '';
      _phoneError = '';
      _passwordError = '';
    });

    if (isEmailSignIn) {
      if (!_validateEmail(email)) {
        setState(() {
          _emailError = 'Please enter a valid email address';
        });
      }
      if (!_validatePassword(password)) {
        setState(() {
          _passwordError = 'Password must be at least 8 characters long, include 1 capital letter and 1 number';
        });
      }
      if (_emailError.isEmpty && _passwordError.isEmpty) {
        // Proceed with email sign-in
        Navigator.of(context).push(MaterialPageRoute(builder: (context) => MainScreen()));
      }
    } else {
      if (phone.isEmpty) {
        setState(() {
          _phoneError = 'Please enter your phone number';
        });
      }
      if (!_validatePassword(password)) {
        setState(() {
          _passwordError = 'Password must be at least 8 characters long, include 1 capital letter and 1 number';
        });
      }
      if (_phoneError.isEmpty && _passwordError.isEmpty) {
        // Proceed with phone sign-in
        Navigator.of(context).push(MaterialPageRoute(builder: (context) => MainScreen()));
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          TextButton(
            onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(builder: (context) => MainScreen()));
            }, // Add your skip action
            child: const Text("Skip", style: TextStyle(color: Colors.black)),
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                children: [
                  const TextSpan(
                    text: "Welcome to ",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  TextSpan(
                    text: "Wanasa",
                    style: const TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.red, // Red color for "Wanasa"
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 8),
            const Text(
              "Wanasa: Your gateway to seamless entertainment booking.",
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 24),
            Text(
              "Sign in to your Account",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.grey[800],
              ),
            ),
            const SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  isEmailSignIn ? "Email Address" : "Phone Number",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                GestureDetector(
                  onTap: toggleSignInMethod,
                  child: Text(
                    isEmailSignIn ? "Use Phone Number" : "Use Email Address",
                    style: const TextStyle(
                      color: Color.fromARGB(255, 200, 201, 202),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 8),
            CustomTextField(
              controller: isEmailSignIn ? _emailController : _phoneController,
              hintText: isEmailSignIn ? "example@gmail.com" : "+966",
              icon: isEmailSignIn ? Icons.email : Icons.phone,
              keyboardType: isEmailSignIn
                  ? TextInputType.emailAddress
                  : TextInputType.phone,
            ),
            if (_emailError.isNotEmpty) ...[
              const SizedBox(height: 8),
              Text(
                _emailError,
                style: TextStyle(color: Colors.red),
              ),
            ],
            if (_phoneError.isNotEmpty) ...[
              const SizedBox(height: 8),
              Text(
                _phoneError,
                style: TextStyle(color: Colors.red),
              ),
            ],
            const SizedBox(height: 16),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Password",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(height: 8),
                CustomTextField(
                  controller: _passwordController,
                  hintText: "******", // Placeholder inside password field
                  icon: Icons.lock,
                  isPassword: true,
                  maxLines: 1, // Ensure password field is single line
                ),
                if (_passwordError.isNotEmpty) ...[
                  const SizedBox(height: 8),
                  Text(
                    _passwordError,
                    style: TextStyle(color: Colors.red),
                  ),
                ],
              ],
            ),
            const SizedBox(height: 8),
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                onPressed: () {}, // Add your forgot password action
                child: const Text("Forgot your Password?", style: TextStyle(color: Colors.black)),
              ),
            ),
            const SizedBox(height: 16),
            CustomButton(
              text: "Sign In",
              onPressed: _signIn,
              size: 18,
              bordercirclar: 30,
            ),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Don't have an account?",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: const Color.fromARGB(255, 200, 201, 202),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => SignUpScreen()));
                  }, // Add your sign-up navigation action
                  child: const Text(
                    "Sign up",
                    style: TextStyle(
                      color: Colors.red,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            Center(
              child: TextButton(
                onPressed: () {
               Navigator.of(context).push(MaterialPageRoute(builder: (context) => Home()));
                }, // Add sign-in as user action
                child: const Text(
                  "Sign in as User",
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
