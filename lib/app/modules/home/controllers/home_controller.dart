import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:taste_of_perm/app/data/models/event/event.dart';
import 'package:taste_of_perm/app/data/repositories/events.dart';
import 'package:taste_of_perm/app/routes/app_pages.dart';

class HomeController extends GetxController {
  HomeController(this.repository);

  final EventsRepository repository;

  RxList<Event> events = <Event>[].obs;

  onInit() {
    super.onInit();
    events.addAll([
      Event(
        uuid: '123',
        title: 'title',
        description: 'description',
        notice: 'notice',
        link: 'link',
        source: 'source',
        image:
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR6GyNUbfEDjsrGdtO3vGcRbyPkkQd0mScEfoaPkNggbA&s',
      ),
      Event(
        uuid: '23',
        title: 'title',
        description: 'description',
        notice: 'notice',
        link: 'link',
        source: 'source',
      ),
      Event(
        uuid: '3',
        title: 'title',
        description: 'description',
        notice: 'notice',
        link: 'link',
        source: 'source',
        image:
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR6GyNUbfEDjsrGdtO3vGcRbyPkkQd0mScEfoaPkNggbA&s',
      ),
      Event(
        uuid: '21',
        title: 'title',
        description: 'description',
        notice: 'notice',
        link: 'link',
        source: 'source',
        image:
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR6GyNUbfEDjsrGdtO3vGcRbyPkkQd0mScEfoaPkNggbA&s',
      ),
      Event(
        uuid: '321',
        title: 'title',
        description: 'description',
        notice: 'notice',
        link: 'link',
        source: 'source',
        image:
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR6GyNUbfEDjsrGdtO3vGcRbyPkkQd0mScEfoaPkNggbA&s',
      ),
    ]);

    final test = repository.getAll();
    print(test);

    for (int i = 0; i < events.length; i++) {
      if (repository.checkVisits(events[i].uuid)) {
        changeVisitedState(i);
      }
    }
  }

  changeVisitedState(int index) {
    events[index] = events[index].copyWith(visited: !events[index].visited);
    if (events[index].visited) {
      repository.checkVisited(events[index].uuid);
    } else {
      repository.uncheckVisited(events[index].uuid);
    }
    events.refresh();
  }

  openFilter() {}

  openEvent(int index) {
    Get.toNamed(Routes.ABOUT_EVENT, arguments: events[index]);
  }

  randomEvent() {
    if (events.isNotEmpty) {
      final int index = Random().nextInt(events.length);
      openEvent(index);
    } else {
      Get.snackbar(
        'Ошибка',
        'Мероприятий не обнаружено',
        backgroundColor: Colors.redAccent,
        colorText: Colors.white,
      );
    }
  }
}
