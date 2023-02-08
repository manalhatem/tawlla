class HomeModel{
  String img;
  String title;
  String name;
  String address;

  HomeModel({required this.img, required this.title, required this.name, required this.address});
}

List<HomeModel> resList=[
  HomeModel(img: 'assets/images/rest1.png', title: 'مشويات', name: 'مطعم ديري كوين', address: 'شارع الملك عبد العزيز - جدة'),
  HomeModel(img: 'assets/images/rest2.png', title: 'مأكولات سريعة', name: 'مطعم تاكو بيل', address: 'شارع الملك عبد العزيز - جدة'),
  HomeModel(img: 'assets/images/res3.png', title: 'مخبوزات', name: 'مطعم أربيز', address: 'شارع الملك عبد العزيز - جدة'),
  HomeModel(img: 'assets/images/res4.png', title: 'أسماك', name: 'مطعم طرح بحر', address: 'شارع الملك عبد العزيز - جدة'),
];

List<HomeModel> myBookings=[
  HomeModel(img: 'assets/images/rest1.png', title: '23456', name: 'مطعم ديري كوين', address: '03:15'),
  HomeModel(img: 'assets/images/rest2.png', title: '12348 ', name: 'مطعم تاكو بيل', address: '03:15 '),
  HomeModel(img: 'assets/images/res3.png', title: '98760', name: 'مطعم أربيز', address: '03:15 '),
  HomeModel(img: 'assets/images/res4.png', title: '54313', name: 'مطعم طرح بحر', address: '03:15 '),
];