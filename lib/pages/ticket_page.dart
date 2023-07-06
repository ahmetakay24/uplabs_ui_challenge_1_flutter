import 'package:flutter/material.dart';
import '../core/core_methods.dart';

class Travel extends StatelessWidget {
  const Travel({super.key});

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
                Expanded(flex: CoreUtilitys().imageFlexValue, child: image(TravelItems().travelImage)),
                const Expanded(
                  child: TravelTitle(),
                ),
                Expanded(flex: CoreUtilitys().bodyTextFlexValue, child: const TravelBodyText()),
                const Spacer(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class TravelTitle extends StatelessWidget {
  const TravelTitle({
    super.key,
  });

  final String _ticketTitleName = "Ticket Booking";

  @override
  Widget build(BuildContext context) {
    return Text(
      _ticketTitleName,
      style: Theme.of(context).textTheme.headlineLarge?.copyWith(color: Colors.black),
    );
  }
}

class TravelBodyText extends StatelessWidget {
  const TravelBodyText({
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

class TravelItems {
  String travelImage = "ticket.png";
}
