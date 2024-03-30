import 'package:flutter/material.dart';
import 'package:taste_of_perm/app/data/models/event/event.dart';

class EventWidget extends StatelessWidget {
  const EventWidget({
    super.key,
    required this.event,
    required this.onTap,
    required this.onTapState,
  });

  final Event event;
  final Function onTap;
  final Function onTapState;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onTap(),
      child: Card.outlined(
        clipBehavior: Clip.antiAliasWithSaveLayer,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.0),
          side: const BorderSide(
            color: Colors.grey,
            width: 1,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      CircleAvatar(),
                      SizedBox(
                        width: 16,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'data',
                            style: Theme.of(context).textTheme.titleMedium,
                          ),
                          Text(
                            'data',
                            style: Theme.of(context).textTheme.bodyMedium,
                          ),
                        ],
                      ),
                    ],
                  ),
                  // FilledButton.tonal(
                  //   onPressed: () {},
                  //   child: Text(event.visited ? 'Посещено' : 'Не посещено'),
                  // )
                  InputChip(
                    label: Text(event.visited ? 'Посещено' : 'Не посещено'),
                    side: BorderSide(style: BorderStyle.none),
                    backgroundColor:
                        event.visited ? Colors.purple[200] : Colors.purple[50],
                    padding: EdgeInsets.all(0),
                    onSelected: (bool value) => onTapState(),
                  ),
                ],
              ),
            ),
            event.image != null
                ? Image.network(
                    height: 250,
                    width: double.infinity,
                    event.image ?? '',
                    fit: BoxFit.cover,
                  )
                : Divider(
                    height: 0,
                    color: Colors.grey,
                  ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    event.title,
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                  Text(
                    event.notice,
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                  const SizedBox(height: 32),
                  Text(
                    event.notice,
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
