class Card {
  String? title;
  String? description;
  String? image;

  Card({
    this.title,
    this.description,
    this.image,
  });
}

List<Card> cards = [
  Card(
    title: 'SMEG',
    description:
        'Monstera deliciosa, the Swiss cheese plant or split-leaf philodron is a species of flowering plant native to tropical forests of southern Mexico.',
    image: 'https://miro.medium.com/max/1400/0*ZQ9Xa7CINFVMA95w',
  ),
  Card(
    title: 'TACC',
    description:
        'Hosta is a genus of plants commonly known as hostas, plantain lilies and occasionally by the japanese name ghiboshi.',
    image: 'https://miro.medium.com/max/1400/0*ZQ9Xa7CINFVMA95w',
  ),
  Card(
    title: 'COMPUTER VISION',
    description:
        'questa è una prova non importa se ci sono scritte cose a caso',
    image: 'https://miro.medium.com/max/1400/0*ZQ9Xa7CINFVMA95w',
  ),
  Card(
    title: 'SWIPE MOBILITY',
    description:
        'Monstera deliciosa, the Swiss cheese plant or split-leaf philodron is a species of flowering plant native to tropical forests of southern Mexico.',
    image: 'https://unsplash.com/it/foto/E2hmaK2ZWqw',
  ),
];
