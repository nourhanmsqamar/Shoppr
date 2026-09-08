import 'package:flutter/material.dart';
import 'package:shoppr/Search/ExploreScreen.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
          child: Column(
            children: [
              ///==================== Search Bar Row ======================
              Row(
                children: [
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "Search",
                        hintStyle:  TextStyle(color: Colors.black87),
                        prefixIcon:  IconButton(
                          icon:  Icon(Icons.search, color: Colors.grey),
                          onPressed: () => Navigator.push(context,
                            MaterialPageRoute(builder: (context) => ExploreScreen(),)
                          ),
                        ),
                        suffixIcon:  Icon(Icons.cancel, color: Colors.grey, size: 18),
                        filled: true,
                        fillColor:  Color(0xffF9F9F9),
                        contentPadding:  EdgeInsets.symmetric(vertical: 0),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide:  BorderSide(
                            color: Color(0xff5E5CE6),
                            width: 0.8,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: const BorderSide(
                            color: Color(0xff5E5CE6),
                            width: 1.2,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 16),

                  ///==================== Cancel Button ======================

                     Text(
                      "Cancel",
                      style: TextStyle(
                        color: Color(0xff5E5CE6),
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),

                ],
              ),
              ///==========================================================
            ],
          ),
        ),
      ),
    );
  }
}