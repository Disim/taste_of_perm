import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:taste_of_perm/app/data/models/event/event.dart';
import 'package:taste_of_perm/app/routes/app_pages.dart';

class HomeController extends GetxController {
  List<Event> events = [
    Event(
      uuid: '123',
      title: 'title',
      notice: 'notice',
      link: 'link',
      source: 'source',
      image:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR6GyNUbfEDjsrGdtO3vGcRbyPkkQd0mScEfoaPkNggbA&s',
    ),
    Event(
      uuid: '23',
      title: 'title',
      notice: 'notice',
      link: 'link',
      source: 'source',
    ),
    Event(
      uuid: '3',
      title: 'title',
      notice: 'notice',
      link: 'link',
      source: 'source',
      image:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR6GyNUbfEDjsrGdtO3vGcRbyPkkQd0mScEfoaPkNggbA&s',
    ),
    Event(
      uuid: '21',
      title: 'title',
      notice: 'notice',
      link: 'link',
      source: 'source',
      image:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR6GyNUbfEDjsrGdtO3vGcRbyPkkQd0mScEfoaPkNggbA&s',
    ),
    Event(
      uuid: '321',
      title: 'title',
      notice: 'notice',
      link: 'link',
      source: 'source',
      image:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR6GyNUbfEDjsrGdtO3vGcRbyPkkQd0mScEfoaPkNggbA&s',
    ),
  ];

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
