import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:taste_of_perm/app/modules/home/views/widgets/aggregator_preview.dart';
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
      body: Obx(
        () => Stack(
          children: [
            CustomScrollView(
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
                        if (controller.aggregators.isNotEmpty) ...[
                          SizedBox(
                            height: 100,
                            child: ListView.builder(
                              shrinkWrap: true,
                              scrollDirection: Axis.horizontal,
                              itemCount: controller.aggregators.length,
                              itemBuilder: (context, index) =>
                                  AggregatorPreview(
                                name: controller.aggregators[index].name,
                                image: controller.aggregators[index].image,
                                onTap: () => controller.loadAggregatorEvents(
                                  controller.aggregators[index].url,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(height: 24)
                        ],
                        SizedBox(
                          height: 60,
                          child: ListView.separated(
                              separatorBuilder: (context, index) =>
                                  const SizedBox(
                                    width: 10,
                                  ),
                              shrinkWrap: true,
                              scrollDirection: Axis.horizontal,
                              itemCount: controller.categories.length,
                              itemBuilder: (context, index) => FilterChip(
                                    selected:
                                        controller.categories[index].state,
                                    label: Text(controller
                                        .categories[index].displayName),
                                    onSelected: (b) {
                                      controller.changeCategoriesState(index);
                                    },
                                  )),
                        ),
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
                  sliver: (controller.filteredList().isNotEmpty)
                      ? SliverList.separated(
                          itemCount: controller.filteredList().length,
                          itemBuilder: (BuildContext context, int index) =>
                              EventWidget(
                            event: controller.filteredList()[index],
                            onTap: () => controller.openEvent(index),
                            onTapState: () =>
                                controller.changeVisitedState(index),
                          ),
                          separatorBuilder: (BuildContext context, int index) =>
                              const SizedBox(
                            height: 16,
                          ),
                        )
                      : SliverList.list(children: [
                          Text(
                            'Мероприятий не запланированно',
                            style: Theme.of(context).textTheme.titleMedium,
                          )
                        ]),
                ),
              ],
            ),
            Visibility(
              visible: !controller.loaded(),
              child: Center(
                child: CircularProgressIndicator(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
