import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class Destination {
  final String name;
  final String image;
  final double rating;
  final String location;
  final String id;
  final double pricePerperson;
  final String description;
  final String city;

  Destination({
    required this.name,
    required this.image,
    required this.rating,
    required this.location,
    required this.id,
    required this.pricePerperson,
    required this.description,
    required this.city,
  });
}

final List<Destination> destinations = [
  Destination(
    city: 'Paris',
    description:
        'Paris is the capital of France, its largest city and also the center of French politics, economy, culture and business. Paris is the fourth largest city in the world after New York, London, and Tokyo.',
    id: '1',
    name: 'Eiffel Tower',
    image:
        'https://images.pexels.com/photos/1530259/pexels-photo-1530259.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
    location: 'Paris, France',
    rating: 4.7,
    pricePerperson: 100.0,
  ),
  Destination(
    city: 'City of Ohio',
    description:
        'Toledo is considered most representative of Spanish culture, and its historic centre was designated a UNESCO World Heritage site in 1986. Its rocky site is traversed by narrow, winding streets, with steep gradients and rough surfaces, centring on the Plaza del Zocodover.',
    id: '2',
    name: 'Historic Architecture, Toledo',
    image:
        'https://images.pexels.com/photos/29890134/pexels-photo-29890134/free-photo-of-historic-architecture-in-toledo-spain.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
    location: 'Toledo, CM, Spain',
    rating: 4.3,
    pricePerperson: 200.0,
  ),
  Destination(
    city: 'Solukhumbu',
    description:
        'Everest Base Camp is a high-altitude settlement in the Himalayas of Nepal, situated at an elevation of approximately 5,364 meters (17,598 feet). 1  It serves as a starting point for many climbers attempting to summit Mount Everest, the worlds highest peak. 2 ',
    id: '3',
    name: 'Everest Base Camp',
    image:
        'https://images.pexels.com/photos/14981339/pexels-photo-14981339/free-photo-of-a-man-standing-on-gray-rock.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
    location: 'Nepal, Asia',
    rating: 4.8,
    pricePerperson: 30.0,
  ),
  Destination(
    city: 'City of London',
    description:
        'Joining the likes of the Roman Pantheon, St Pauls Cathedral boasts one of the biggest domes in the world at 366 feet high. Scale hundreds of steps to the top and bask in the architecture. Spend some time in its famous Whispering Gallery - a walkway thirty meters up.',
    id: '4',
    name: 'St. Paul Cathedral',
    image:
        'https://images.pexels.com/photos/2425694/pexels-photo-2425694.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
    location: 'London, UK',
    rating: 4.6,
    pricePerperson: 50.0,
  ),
];

class Event {
  final String title;

  const Event(this.title);

  @override
  String toString() => title;
}

/// Example events.
///
/// Using a [LinkedHashMap] is highly recommended if you decide to use a map.
final kEvents = LinkedHashMap<DateTime, List<Event>>(
  equals: isSameDay,
  hashCode: getHashCode,
)..addAll(_kEventSource);

final _kEventSource = {
  for (var item in List.generate(50, (index) => index))
    DateTime.utc(kFirstDay.year, kFirstDay.month, item * 5): List.generate(
      item % 4 + 1,
      (index) => Event('Event $item | ${index + 1}'),
    ),
}..addAll({
    kToday: [
      const Event("Today's Event 1"),
      const Event("Today's Event 2"),
    ],
  });

int getHashCode(DateTime key) {
  return key.day * 1000000 + key.month * 10000 + key.year;
}

/// Returns a list of [DateTime] objects from [first] to [last], inclusive.
List<DateTime> daysInRange(DateTime first, DateTime last) {
  final dayCount = last.difference(first).inDays + 1;
  return List.generate(
    dayCount,
    (index) => DateTime.utc(first.year, first.month, first.day + index),
  );
}

final kToday = DateTime.now();
final kFirstDay = DateTime(kToday.year, kToday.month - 3, kToday.day);
final kLastDay = DateTime(kToday.year, kToday.month + 3, kToday.day);

class Schedule {
  final String scheduleimage;
  final String scheduledate;
  final String scheduletitle;
  final String schedulelocation;

  Schedule(
      {required this.scheduleimage,
      required this.scheduledate,
      required this.scheduletitle,
      required this.schedulelocation});
}

final List<Schedule> schedules = [
  Schedule(
    scheduleimage:
        'https://images.pexels.com/photos/15823865/pexels-photo-15823865/free-photo-of-palm-trees-alley.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
    scheduledate: '24 January 2024',
    scheduletitle: 'Niladri Reservior',
    schedulelocation: 'Tekergat, Sunamgnj',
  ),
  Schedule(
    scheduleimage:
        'https://images.pexels.com/photos/440155/pexels-photo-440155.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
    scheduledate: '26 January 2024',
    scheduletitle: 'Hight Rech Park',
    schedulelocation: 'Zero Point, Sylhet',
  ),
  Schedule(
    scheduleimage:
        'https://images.pexels.com/photos/11463990/pexels-photo-11463990.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
    scheduledate: '28 January 2024',
    scheduletitle: 'Drama Reservior',
    schedulelocation: 'Drama, Kuningan',
  ),
];
