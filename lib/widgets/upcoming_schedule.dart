import 'package:flutter/material.dart';

// Define the constant color for easy reference
const Color customColor = Color(0xFF2ADBD8);

// Main widget for displaying the list of doctor's appointments
class UpcomingSchedule extends StatelessWidget {
  // Reusable method for creating a doctor's appointment card
  Widget _doctorCard(
      BuildContext context, {
        required String doctorName,
        required String specialty,
        required String imagePath,
        required String date,
        required String time,
        required String status,
      }) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 5),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 4,
            spreadRadius: 2,
          ),
        ],
      ),
      child: Column(
        children: [
          // Doctor's name, specialty and image
          ListTile(
            title: Text(
              doctorName,
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            subtitle: Text(specialty),
            trailing: CircleAvatar(
              radius: 25,
              backgroundImage: AssetImage(imagePath),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Divider(
              thickness: 1,
              height: 20,
            ),
          ),
          // Appointment date, time, and status
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Row(
                children: [
                  Icon(
                    Icons.calendar_month,
                    color: customColor,
                  ),
                  SizedBox(width: 5),
                  Text(
                    date,
                    style: TextStyle(
                      color: customColor,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Icon(
                    Icons.access_time_filled,
                    color: customColor,
                  ),
                  SizedBox(width: 5),
                  Text(
                    time,
                    style: TextStyle(
                      color: customColor,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Container(
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      color: customColor,
                      shape: BoxShape.circle,
                    ),
                  ),
                  SizedBox(width: 5),
                  Text(
                    status,
                    style: TextStyle(
                      color: customColor,
                    ),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 15),
          // Action buttons for cancel and reschedule
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _actionButton("Cancel", customColor.withOpacity(0.1), customColor),
              _actionButton("Reschedule", customColor, Colors.white),
            ],
          ),
          SizedBox(height: 10),
        ],
      ),
    );
  }

  // Helper method for creating action buttons
  Widget _actionButton(String label, Color bgColor, Color textColor) {
    return InkWell(
      onTap: () {},
      child: Container(
        width: 150,
        padding: EdgeInsets.symmetric(vertical: 12),
        decoration: BoxDecoration(
          color: bgColor,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
          child: Text(
            label,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: textColor,
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "About Doctor",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
          ),
          SizedBox(height: 15),
          // First doctor's appointment card
          _doctorCard(
            context,
            doctorName: "Dr. John Smith",
            specialty: "Therapist",
            imagePath: "images/doctor1.jpg", // Update the path as needed
            date: "12/01/2023",
            time: "10:30 AM",
            status: "Confirmed",
          ),
          SizedBox(height: 20),
          // Second doctor's appointment card
          _doctorCard(
            context,
            doctorName: "Dr. Emily Johnson",
            specialty: "Therapist",
            imagePath: "images/doctor2.jpg", // Update the path as needed
            date: "12/02/2023",
            time: "11:00 AM",
            status: "Pending",
          ),
          SizedBox(height: 20),
          // Third doctor's appointment card
          _doctorCard(
            context,
            doctorName: "Dr. Michael Lee",
            specialty: "Therapist",
            imagePath: "images/doctor3.jpg", // Update the path as needed
            date: "12/05/2023",
            time: "2:00 PM",
            status: "Confirmed",
          ),
          SizedBox(height: 20),
          // Fourth doctor's appointment card
          _doctorCard(
            context,
            doctorName: "Dr. Sarah Taylor",
            specialty: "Therapist",
            imagePath: "images/doctor4.jpg", // Update the path as needed
            date: "12/06/2023",
            time: "9:00 AM",
            status: "Confirmed",
          ),
          SizedBox(height: 20),
          // Fifth doctor's appointment card
          _doctorCard(
            context,
            doctorName: "Dr. Mark Davis",
            specialty: "Therapist",
            imagePath: "images/doctor5.jpg", // Update the path as needed
            date: "12/07/2023",
            time: "1:00 PM",
            status: "Pending",
          ),
        ],
      ),
    );
  }
}
