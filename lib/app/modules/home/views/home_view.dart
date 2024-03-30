import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:taste_of_perm/app/modules/home/views/widgets/event_widget.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Афиша'),
        actions: [
          IconButton.outlined(
            onPressed: () => controller.openFilter(),
            icon: const Icon(Icons.filter_alt),
          )
        ],
      ),
      body: Obx(
        () => CustomScrollView(
          slivers: <Widget>[
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(
                      width: double.infinity,
                      child: OutlinedButton(
                          child: const Text('Мне повезёт!'),
                          onPressed: () {
                            controller.randomEvent();
                          }),
                    ),
                    Center(
                      child: Text(
                        'Открывает случайное мероприятие',
                        style: Theme.of(context)
                            .textTheme
                            .bodyMedium
                            ?.copyWith(color: Colors.grey),
                      ),
                    ),
                    const SizedBox(height: 24),
                    const Text(
                      'Подборка:',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SliverPadding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              sliver: SliverList.separated(
                itemCount: controller.events.length,
                itemBuilder: (BuildContext context, int index) => EventWidget(
                  event: controller.events[index],
                  onTap: () => controller.openEvent(index),
                  onTapState: () => controller.changeVisitedState(index),
                ),
                separatorBuilder: (BuildContext context, int index) =>
                    const SizedBox(
                  height: 16,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
