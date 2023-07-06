import 'package:flutter/material.dart';
import '../core/core_methods.dart';

class Destination extends StatelessWidget {
  const Destination({super.key});

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
                Expanded(flex: CoreUtilitys().imageFlexValue, child: image(DestinationItems().destinationImage)),
                const Expanded(
                  child: DestinationTitle(),
                ),
                Expanded(flex: CoreUtilitys().bodyTextFlexValue, child: const DestinationBodyText()),
                const Spacer(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class DestinationTitle extends StatelessWidget {
  const DestinationTitle({
    super.key,
  });
  
  final String _destinationTitle = "Destination";

  @override
  Widget build(BuildContext context) {
    return Text(
      _destinationTitle,
      style: Theme.of(context).textTheme.headlineLarge?.copyWith(color: Colors.black),
    );
  }
}

class DestinationBodyText extends StatelessWidget {
  const DestinationBodyText({
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

class DestinationItems {
  String destinationImage = "world.png";
}
