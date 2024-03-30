import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/about_event_controller.dart';

class AboutEventView extends GetView<AboutEventController> {
  const AboutEventView({Key? key}) : super(key: key);
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
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Онегин',
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    FilledButton.tonal(
                      onPressed: () {},
                      child: Text('Узнать подробнее'),
                    ),
                    Row(
                      children: [
                        IconButton.outlined(
                          onPressed: () {},
                          icon: Icon(Icons.web),
                        ),
                      ],
                    )
                  ],
                ),
                SizedBox(height: 8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [Text('До 31 марта')],
                ),
                Text(
                  'Подробнее',
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                Text(
                  'Евгений Онегин живет на широкую ногу: балы, приемы, театральные премьеры и прочие развлечения, которые может предложить молодому человеку столица. Но светская жизнь давно утомила его, потому известие о болезни живущего в деревне дяди он воспринимает как возможность сбежать от опостылевшего света. Однако добравшись до имения, Онегин узнает о кончине родственника, что, впрочем, не сильно расстраивает Евгения. Его финансовые дела весьма печальны, а дядя богат, и других наследников у него нет. Онегин запирается в имении, сторонится соседей, которые очень скоро начинают называть его между собой чудаком. В бесцельном одиночестве Евгений живет до тех пор, пока в соседнем имении не объявляется вернувшийся из-за границы хозяин — юный, восторженный, еще не пресыщенный жизнью Ленский, который знакомит Евгения с сестрами Татьяной и Ольгой Лариными…',
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
