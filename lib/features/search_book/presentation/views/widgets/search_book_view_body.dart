import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SearchBookViewBody extends StatelessWidget {
  const SearchBookViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 16),
        Padding(
          padding: .symmetric(horizontal: 30),
          child: TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(16),
                borderSide: BorderSide(color: Colors.white),
              ),
              suffixIconConstraints: BoxConstraints(minWidth: 40),
              suffixIcon: Opacity(
                opacity: 0.7,
                child: FaIcon(
                  FontAwesomeIcons.magnifyingGlass,
                  color: Colors.white,
                ),
              ),
              label: Text("Search Book"),
              //TODO: put list View here
            ),
          ),
        ),
      ],
    );
  }
}
