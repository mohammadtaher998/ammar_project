import 'package:ammar_project/Pages/ActivitySignUpScreen.dart';
import 'package:ammar_project/customDesign/CustomButton.dart';
import 'package:ammar_project/customDesign/CustomTextField.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatelessWidget {
  final TextEditingController _fullNameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  void _createAccount(BuildContext context) {
    String fullName = _fullNameController.text;
    String email = _emailController.text;
    String phone = _phoneController.text;
    String password = _passwordController.text;

    if (fullName.isEmpty || email.isEmpty || phone.isEmpty || password.isEmpty) {
      // Show error if any field is empty
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text("Please fill in all the required fields."),
        ),
      );
    } else {
      // Proceed with account creation
      Navigator.of(context).push(MaterialPageRoute(builder: (context) => ActivitySignUpScreen()));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: SingleChildScrollView(  // Wrap Column in SingleChildScrollView
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              "Create new Account",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 24),
            // Full Name
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Full Name"),
                const SizedBox(height: 4),
                CustomTextField(
                  controller: _fullNameController,
                  hintText: "Full Name",
                  icon: Icons.person,
                ),
              ],
            ),
            const SizedBox(height: 16),
            // Email Address
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Email Address"),
                const SizedBox(height: 4),
                CustomTextField(
                  controller: _emailController,
                  hintText: "example@gmail.com",
                  icon: Icons.email,
                  keyboardType: TextInputType.emailAddress,
                ),
              ],
            ),
            const SizedBox(height: 16),
            // Phone Number
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Phone Number"),
                const SizedBox(height: 4),
                CustomTextField(
                  controller: _phoneController,
                  hintText: "+966",
                  icon: Icons.phone,
                  keyboardType: TextInputType.phone,
                ),
              ],
            ),
            const SizedBox(height: 16),
            // Password
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Password"),
                const SizedBox(height: 4),
                CustomTextField(
                  controller: _passwordController,
                  hintText: "********",
                  icon: Icons.lock,
                  isPassword: true,
                ),
              ],
            ),
            const SizedBox(height: 16),
            // Photo of Personal ID
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Photo of Personal ID"),
                const SizedBox(height: 4),
                CustomTextField(
                  hintText: "Upload Photo of your ID",
                  icon: Icons.photo_camera,
                  isReadOnly: true,
                  onTap: () {
                    // Add photo upload functionality
                  },
                ),
              ],
            ),
            const SizedBox(height: 24),
            CustomButton(
              text: "Continue",
              onPressed: () {
                _createAccount(context);
              },
             size: 18,
             bordercirclar: 30,
            ),
            const SizedBox(height: 16),
            // Already have an account? Sign in
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Already have an account? "),
                GestureDetector(
                  onTap: () {
                    // Navigate to Sign In screen
                  },
                  child: Text(
                    "Sign in",
                    style: TextStyle(
                      color: Colors.red,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
