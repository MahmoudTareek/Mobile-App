class BoardingModel
{
  late final String image;
  late final String title;
  late final String body;

  BoardingModel({
  required this.image,
  required this.title,
  required this.body,
  });
}

List<BoardingModel> boarding =
  [
    BoardingModel(
        image: 'assets/images/icon2.png',
        title: 'Nearby locations',
        body:'On Board 1 Body',
        ),
    BoardingModel(
        image: 'assets/images/icon1.png',
        title: 'Planned Tours',
        body:'On Board 2 Body',
        ),
    BoardingModel(
        image: 'assets/images/icon3.png',
        title: 'location reviews',
        body:'On Board 3 Body',
        ),
  ];
