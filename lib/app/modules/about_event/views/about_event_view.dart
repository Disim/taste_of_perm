import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/about_event_controller.dart';

class AboutEventView extends GetView<AboutEventController> {
  const AboutEventView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(controller.title),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          if (controller.image != null)
            Image.network(
              controller.image!,
              fit: BoxFit.fill,
            ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  controller.title,
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    FilledButton.tonal(
                      onPressed: () => controller.openSource(),
                      child: const Text('Узнать подробнее'),
                    ),
                    Row(
                      children: [
                        IconButton.outlined(
                          onPressed: () => controller.openLink(),
                          icon: const Icon(Icons.web),
                        ),
                      ],
                    )
                  ],
                ),
                const SizedBox(height: 8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [Text(controller.notice)],
                ),
                Text(
                  'Подробнее',
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                Text(
                  controller.description,
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
