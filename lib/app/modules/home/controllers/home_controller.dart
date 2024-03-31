import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:taste_of_perm/app/data/models/aggregator/aggregator.dart';
import 'package:taste_of_perm/app/data/models/category/category.dart';
import 'package:taste_of_perm/app/data/models/event/event.dart';
import 'package:taste_of_perm/app/data/repositories/events.dart';
import 'package:taste_of_perm/app/routes/app_pages.dart';

class HomeController extends GetxController {
  HomeController(this.repository);

  final EventsRepository repository;

  final _selectedAggregators = 0.obs;
  int get selectedAggregators => _selectedAggregators.value;
  set selectedAggregators(int s) => _selectedAggregators.value = s;

  final status = Status.init.obs;

  RxList<Event> events = <Event>[].obs;

  final categories = <Category>[
    Category('theatre', 'Театр', true),
    Category('cinema', 'Кино', false),
    Category('concert', 'Концерты', false),
    Category('education', 'Обучение', false),
    Category('standup', 'Стендап', false),
    Category('excursion', 'Экскурсии', false),
    Category('exhibition', 'Выставки', false),
    Category('music', 'Музыка', false),
    Category('festival', 'Фестивали', false),
    Category('sports', 'Спорт', false),
    Category('other', 'Прочее', false),
  ].obs;

  List<Event> filteredList() {
    List<Event> newList = [];
    for (final event in events) {
      for (final category in categories) {
        if (event.category == category.name) {
          if (category.state) {
            newList.add(event);
          }
        }
      }
    }
    print(events);
    return newList;
  }

  changeCategoriesState(int index) {
    categories[index].state = !categories[index].state;

    categories.refresh();
  }

  RxList<Aggregator> aggregators = <Aggregator>[
    Aggregator(
      name: 'Все',
      url: '',
      image: '',
    ),
    Aggregator(
      name: 'Афиша',
      url: 'https://www.afisha.ru',
      image:
          'https://yt3.googleusercontent.com/kS6ogJX-LfByy57cN02SEsNUAmuhBtlVwMJDrGR45nWIpash_g49Sj1i7D8cFx7RipPLgab6bA=s900-c-k-c0x00ffffff-no-rj',
    ),
    Aggregator(
      name: 'Пермь 300',
      url: 'https://perm-300.ru',
      image:
          'https://museumperm.ru/uploads/2023/02/09/R975-975_fc4ed59ab749017d05cf97a106c3fe83.jpg',
    ),
    Aggregator(
      name: 'Я. Афиша',
      url: 'https://afisha.yandex.ru',
      image:
          'https://upload.wikimedia.org/wikipedia/commons/thumb/f/f0/Yandex_Afisha_icon.svg/1024px-Yandex_Afisha_icon.svg.png',
    ),
  ].obs;

  @override
  onInit() {
    super.onInit();
    loadAllEvents();

    for (int i = 0; i < events.length; i++) {
      if (repository.checkVisits(events[i].id)) {
        changeVisitedState(i);
      }
    }
  }

  changeVisitedState(int index) {
    events[index] = events[index].copyWith(visited: !events[index].visited);
    if (events[index].visited) {
      repository.checkVisited(events[index].id);
    } else {
      repository.uncheckVisited(events[index].id);
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

  loadAggregatorEvents(String source) async {
    status.value = Status.loading;
    events.clear();
    events.value = await repository.getEvents(source);
    status.value = Status.success;
  }

  loadAllEvents() async {
    status.value = Status.loading;
    events.clear();
    final test = await repository.getEvents();
    events.addAll(test);
    status.value = Status.success;
  }

  bool loaded() {
    return status.value == Status.success;
  }
}

enum Status {
  init,
  loading,
  success,
}
