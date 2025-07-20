import 'package:flutter/material.dart';

class AboutDropdown extends StatefulWidget {
  const AboutDropdown({super.key});

  @override
  _AboutDropdownState createState() => _AboutDropdownState();
}

class _AboutDropdownState extends State<AboutDropdown> {
  bool _isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: () => setState(() => _isExpanded = !_isExpanded),
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 16),
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: Colors.grey.shade400),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("About Me", style: TextStyle(fontSize: 18)),
                Icon(_isExpanded ? Icons.expand_less : Icons.expand_more),
              ],
            ),
          ),
        ),
        AnimatedContainer(
          duration: Duration(milliseconds: 300),
          height: _isExpanded ? 150 : 0,
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: SingleChildScrollView(
            child: Text(
              "I am Sujal Kr Singh, a passionate graphics designer and Flutter developer. I focus on UI/UX and love building smooth, beautiful digital products.",
              style: TextStyle(fontSize: 16),
              
            ),
          ),
        ),
      ],
    );
  }
}
