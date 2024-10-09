import 'package:events/core/common/widgets/customize_button.dart';
import 'package:events/core/common/widgets/default_text.dart';
import 'package:events/core/res/colours.dart';
import 'package:flutter/material.dart';

class OnboardingCard extends StatelessWidget {
  const OnboardingCard({super.key, required this.title, required this.description, required this.heightContainer});
  final String title;
  final String description;
  final double heightContainer;

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: Container(
        height: heightContainer,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colours.primaryColor,
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: Column(
            children: [
                Padding(
                  padding: const EdgeInsets.only(top:20),
                  child: DefaultText(text: title,fontSize: 20, fontFamily: 'Lacquer',),
                ),
                const SizedBox(height: 10,),
              DefaultText(text:description),
                const SizedBox(height: 20,),
              CustomizeButton(
                text: "Continue",
                onTap: (){},
                height: 50,
                backgroundColor: Colours.secondaryColor,
                width: double.infinity, ),
            ],
          ),
        ),
      ),
    );
  }
}
