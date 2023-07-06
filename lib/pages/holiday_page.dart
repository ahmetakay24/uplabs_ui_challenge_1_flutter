import 'package:flutter/material.dart';
import '../core/core_methods.dart';

class Holiday extends StatelessWidget {
  const Holiday({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: EdgeInsets.all(CoreUtilitys().paddingValue),
            child: Column(
              children: [
                Expanded(flex: CoreUtilitys().imageFlexValue, child: image(HolidayItems().travelImage)),
                const Expanded(
                  child: HolidayTitle(),
                ),
                Expanded(flex: CoreUtilitys().bodyTextFlexValue, child: const HolidayBodyText()),
                const Spacer(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class HolidayTitle extends StatelessWidget {
  const HolidayTitle({
    super.key,
  });

  final String _holidayTitle = "Enjoy Your Holiday";

  @override
  Widget build(BuildContext context) {
    return Text(
      _holidayTitle,
      style: Theme.of(context).textTheme.headlineLarge?.copyWith(color: Colors.black),
    );
  }
}


class HolidayBodyText extends StatelessWidget {
  const HolidayBodyText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      "lorem ipsum " * 40,
      textAlign: TextAlign.center,
      style: Theme.of(context).textTheme.bodyLarge?.copyWith(color: Colors.grey[700]),
    );
  }
}

class HolidayItems {
  String travelImage = "suitcase.png";
}
