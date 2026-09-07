import 'package:flutter/material.dart';
import 'package:shoppr/Profile/widgets/ProfileItem.dart';

class Profilescreen extends StatelessWidget {
  const Profilescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 50),
            CircleAvatar(
              radius: 50,
              backgroundColor: Color(0xffE0E0E0),
              child: Icon(
                Icons.person,
                size: 60,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 12),
             Text(
              "User",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),

            ///===========list tile calling================
            ProfileItem(icon: Icons.person, title: "Profile"),
            ProfileItem(icon: Icons.settings, title: "Setting"),
            ProfileItem(icon: Icons.email, title: "Contact"),
            ProfileItem(icon: Icons.share, title: "Share App"),
            ProfileItem(icon: Icons.help_outline, title: "Help"),
            ///==================================================

            SizedBox(height: 60,),
                Text(
                  'Sign Out',
                  style: TextStyle(
                    color: Color(0xffF55F1F),
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
            ),
          ],


        ),
      ),
    );
  }
}
