

class UsersModel
{
  late final String image;
  late final String name;
  late final String email;
  late bool isMale;
  late bool isdeleted;
  late int id;


  UsersModel({
  required this.image,
  required this.name,
  required this.email,
  required this.isMale,
  required this.isdeleted,
  required this.id,
  });
}
List<UsersModel> users =
  [
        UsersModel(
        image: 'assets/images/NoProfilePicBoy.jpg',
        name: 'User 1',
        email:'User\'s 1 Email',
        isMale: true,
        isdeleted: true,
        id: 0,
        ),
        UsersModel(
        image: 'assets/images/NoProfilePicBoy.jpg',
        name: 'User 2',
        email:'User\'s 2 Email',
        isMale: true,
        isdeleted: true,
        id: 1,
        ),
        UsersModel(
        image: 'assets/images/NoProfilePicGirl.png',
        name: 'User 3',
        email:'User\'s 3 Email',
        isMale: false,
        isdeleted: true,
        id: 2,
        ),
        UsersModel(
        image: 'assets/images/NoProfilePicGirl.png',
        name: 'User 4',
        email:'User\'s 4 Email',
        isMale: false,
        isdeleted: true,
        id: 3,
        ),
        UsersModel(
        image: 'assets/images/NoProfilePicBoy.jpg',
        name: 'User 5',
        email:'User\'s 5 Email',
        isMale: true,
        isdeleted: true,
        id: 4,
        ),
        UsersModel(
        image: 'assets/images/NoProfilePicGirl.png',
        name: 'User 6',
        email:'User\'s 6 Email',
        isMale: false,
        isdeleted: true,
        id: 5,
        ),
  ];
