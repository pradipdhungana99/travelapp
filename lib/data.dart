class Destination {
  final String name;
  final String image;
  final double rating;
  final String location;
  final String id;
  final double pricePerperson;
  final String description;

  Destination({
    required this.name,
    required this.image,
    required this.rating,
    required this.location,
    required this.id,
    required this.pricePerperson,
    required this.description,
  });
}

final List<Destination> destinations = [
  Destination(
    description: '',
    id: '1',
    name: 'Eiffel Tower',
    image:
        'https://images.pexels.com/photos/1530259/pexels-photo-1530259.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
    location: 'Paris, France',
    rating: 4.7,
    pricePerperson: 100.0,
  ),
  Destination(
    description: '',
    id: '2',
    name: 'Historic Architecture, Toledo',
    image:
        'https://images.pexels.com/photos/29890134/pexels-photo-29890134/free-photo-of-historic-architecture-in-toledo-spain.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
    location: 'Toledo, CM, Spain',
    rating: 4.5,
    pricePerperson: 200.0,
  ),
  Destination(
    description: '',
    id: '3',
    name: 'Everest Base Camp',
    image:
        'https://images.pexels.com/photos/14981339/pexels-photo-14981339/free-photo-of-a-man-standing-on-gray-rock.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
    location: 'Nepal, Asia',
    rating: 4.5,
    pricePerperson: 30.0,
  ),
  Destination(
    description: '',
    id: '4',
    name: 'St. Paul Cathedral',
    image:
        'https://images.pexels.com/photos/2425694/pexels-photo-2425694.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
    location: 'London, UK',
    rating: 4.5,
    pricePerperson: 50.0,
  ),
];
