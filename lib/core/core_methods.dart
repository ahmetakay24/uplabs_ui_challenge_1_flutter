import 'package:flutter/material.dart';

image(String fileName) {
  return Image.asset("assets/images/$fileName");
}

class CoreUtilitys {
  double paddingValue = 30.0;
  int imageFlexValue = 3;
  int bodyTextFlexValue = 2;
}

class SkipTextButton extends StatelessWidget {
  final VoidCallback onPressed;

  const SkipTextButton({Key? key, required this.onPressed}) : super(key: key);

  final String _skipTextButtonName = "Skip";

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Text(
        _skipTextButtonName,
        style: Theme.of(context).textTheme.headlineMedium,
      ),
    );
  }
}

class GetStartedButton extends StatelessWidget {
  const GetStartedButton({
    super.key,
  });

  final String _getStartedButtonName = "Get Started";

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(shape: const StadiumBorder()),
      child: Padding(
        padding: const EdgeInsets.only(left: 100, right: 100),
        child: Text(
          _getStartedButtonName,
          style: Theme.of(context).textTheme.headlineMedium,
        ),
      ),
    );
  }
}
