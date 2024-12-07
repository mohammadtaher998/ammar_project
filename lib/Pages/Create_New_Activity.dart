import 'package:ammar_project/customDesign/Custom_Button.dart';
import 'package:ammar_project/customDesign/Custom_Text_Field.dart';
import 'package:flutter/material.dart';

class CreateNewActivity extends StatefulWidget {
  const CreateNewActivity({super.key});

  @override
  _CreateNewActivity createState() => _CreateNewActivity();
}

class _CreateNewActivity extends State<CreateNewActivity> {
  DateTime selectedDate = DateTime.now();
  TimeOfDay selectedTime = TimeOfDay.now();

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: selectedDate,
      firstDate: DateTime(2020),
      lastDate: DateTime(2030),
      builder: (BuildContext context, Widget? child) {
        return Theme(
          data: ThemeData.light().copyWith(
            primaryColor: Colors.red,
            colorScheme: const ColorScheme.light(primary: Colors.red),
            buttonTheme: const ButtonThemeData(textTheme: ButtonTextTheme.primary),
          ),
          child: child!,
        );
      },
    );
    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
      });
    }
  }

  Future<void> _selectTime(BuildContext context) async {
    final TimeOfDay? picked = await showTimePicker(
      context: context,
      initialTime: selectedTime,
      builder: (BuildContext context, Widget? child) {
        return Theme(
          data: ThemeData.light().copyWith(
            primaryColor: Colors.red,
            colorScheme: const ColorScheme.light(primary: Colors.red),
            buttonTheme: const ButtonThemeData(textTheme: ButtonTextTheme.primary),
          ),
          child: child!,
        );
      },
    );
    if (picked != null && picked != selectedTime) {
      setState(() {
        selectedTime = picked;
      });
    }
  }

  // Function to open map
  void _openMap() {
    // Add functionality to open map here
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: SingleChildScrollView(  // Wrap Column in SingleChildScrollView
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
              "Create new Account",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 24),

            // Type of Activity
            const Text(
              "Type of Activity",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            const CustomTextField(
              hintText: "Enter Type of Activity",
              icon: Icons.category,
            ),
            const SizedBox(height: 16),

            // Activity Description
            const Text(
              "Activity Description",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            const CustomTextField(
              hintText: "Enter Description of Activity",
              icon: Icons.description,
              maxLines: 1,
            ),
            const SizedBox(height: 16),

            // Picture of Activity
            const Text(
              "Picture of Activity",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            CustomTextField(
              hintText: "Upload Picture of Activity",
              icon: Icons.photo_camera,
              isReadOnly: true,
              onTap: () {
                // Add image picking functionality
              },
            ),
            const SizedBox(height: 16),

            // Price of the Activity
            const Text(
              "Price of The Activity",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            const CustomTextField(
              hintText: "Enter Price of Activity",
              icon: Icons.attach_money,
              keyboardType: TextInputType.number,
            ),
            const SizedBox(height: 16),

            // Activity Duration
            const Text(
              "Activity Duration",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            GestureDetector(
              onTap: () async {
                await _selectDate(context);
                await _selectTime(context);
              },
              child: const AbsorbPointer(
                child: CustomTextField(
                  hintText: "Enter Duration in Hour/Min",
                  icon: Icons.timer,
                  keyboardType: TextInputType.number,
                ),
              ),
            ),
            const SizedBox(height: 24),

            // Activity Location
            const Text(
              "Activity Location",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            CustomTextField(
              hintText: "Enter Activity Location",
              icon: Icons.location_on,
              isReadOnly: true,
              onTap: _openMap,
            ),
            const SizedBox(height: 16),

            // Create Account Button
            CustomButton(
              text: "Create an Account",
              onPressed: () {
                // Add create account action
              },
              size: 18,
              bordercirclar: 30,
            ),
          ],
        ),
      ),
    );
  }
}
