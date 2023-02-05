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