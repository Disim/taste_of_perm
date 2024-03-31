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
    String name = event.source.replaceAll('https://', '');

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
                      const CircleAvatar(),
                      const SizedBox(
                        width: 16,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            name,
                            style: Theme.of(context).textTheme.titleMedium,
                          ),
                          Text(
                            event.category,
                            style: Theme.of(context).textTheme.bodyMedium,
                          ),
                        ],
                      ),
                    ],
                  ),
                  InputChip(
                    label: Text(event.visited ? 'Посещено' : 'Не посещено'),
                    side: const BorderSide(style: BorderStyle.none),
                    backgroundColor:
                        event.visited ? Colors.purple[200] : Colors.purple[50],
                    padding: const EdgeInsets.all(0),
                    onSelected: (bool value) => onTapState(),
                  ),
                ],
              ),
            ),
            Image.network(
              height: 250,
              width: double.infinity,
              event.image,
              fit: BoxFit.cover,
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
                  if (event.description.isNotEmpty) ...[
                    const SizedBox(height: 32),
                    Text(
                      event.description,
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                  ],
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
