class ProfileModel {
  final String? img;
  final String? name;

  ProfileModel({required this.img, required this.name});
}

List<ProfileModel> profileList = [
  ProfileModel(img: 'assets/images/girl1.jpg', name: 'Jess'),
  ProfileModel(img: 'assets/images/girl2.jpeg', name: 'Steph'),
  ProfileModel(img: 'assets/images/girl3.jpeg', name: 'Naomi'),
  ProfileModel(img: 'assets/images/man.jpeg', name: 'Ken'),
  ProfileModel(img: 'assets/images/girl4.jpg', name: 'Christine'),
];
