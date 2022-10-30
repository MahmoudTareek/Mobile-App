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
        image: 'assets/images/logo.png',
        title: 'On Board 1 Title',
        body:'On Board 1 Body',
        ),
    BoardingModel(
        image: 'assets/images/logo.png',
        title: 'On Board 2 Title',
        body:'On Board 2 Body',
        ),
    BoardingModel(
        image: 'assets/images/logo.png',
        title: 'On Board 3 Title',
        body:'On Board 3 Body',
        ),
  ];
