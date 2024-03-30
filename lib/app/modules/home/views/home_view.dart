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
        centerTitle: true,
      ),
      body: CustomScrollView(
        slivers: <Widget>[
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Открыть случайное мерпориятие:',
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                        child: const Text('Мне повезёт!'),
                        onPressed: () {
                          controller.randomEvent();
                        }),
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
              ),
              separatorBuilder: (BuildContext context, int index) =>
                  const SizedBox(
                height: 16,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
