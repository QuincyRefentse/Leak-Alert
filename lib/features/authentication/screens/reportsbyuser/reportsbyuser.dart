
import 'package:flutter/material.dart';
import 'package:dotted_border/dotted_border.dart';

class ReportsByUser extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            DottedBorder(
              color: Colors.grey, // Color of the dashed line
              strokeWidth: 3, // Increased thickness of the dashed line
              dashPattern: [10, 6], // Increased length of dashes and gaps
              borderType: BorderType.RRect, // Rounded rectangle
              radius: Radius.circular(8), // Corner radius
              child: SizedBox(
                width: 200, // Button width
                height: 150, // Button height
                child: ElevatedButton(
                  onPressed: () {
                    // Logic for capturing images
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white, // Button background
                    foregroundColor: Colors.black, // Button text color
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                      side: BorderSide.none, // No default border
                    ),
                  ),
                  child: Text(
                    "Capture Image",
                    style: TextStyle(fontSize: 22),
                  ),
                ),
              ),
            ),
             //
            SizedBox(height: 30), // Space between the first button and "OR"
            Text(
              "or",
              style: TextStyle(fontSize: 20, color: Colors.black), // Styling for the "OR"
            ),
            SizedBox(height: 30), // Space between "OR" and the second button// Space between buttons
            DottedBorder(
              color: Colors.grey, // Color of the dashed line
              strokeWidth: 3, // Increased thickness of the dashed line
              dashPattern: [10, 6], // Increased length of dashes and gaps
              borderType: BorderType.RRect, // Rounded rectangle
              radius: Radius.circular(8), // Corner radius
              child: SizedBox(
                width: 200, // Button width
                height: 150, // Button height
                child: ElevatedButton(
                  onPressed: () {
                    // Logic for recording videos
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white, // Button background
                    foregroundColor: Colors.black, // Button text color
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                      side: BorderSide.none, // No default border
                    ),
                  ),
                  child: Text(
                    "Record Video",
                    style: TextStyle(fontSize: 22),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}




