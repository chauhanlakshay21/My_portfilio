class ProjectUtils{
  final String image;
  final String title;
  final String subtitle;
  final String androidLink;
  final String otherLink;
  //final String iosLink;
  //final String weblink;

  ProjectUtils({
    required this.image,
    required this.title,
    required this.subtitle,
    required this.androidLink,
    required this.otherLink,
    //required this.iosLink,
    //required this.weblink,
});
}


//Projects
List<ProjectUtils> projectUtils = [
  ProjectUtils(
      image: 'assets/projects/airlineprojectjava.jpg',
      title: 'SkyFleet Management System',
      subtitle: 'This is airline ticket Booking Application or we can check the flight details',
      otherLink: 'hyyy',
      androidLink: 'null',
       ),
  ProjectUtils(image: 'assets/projects/truenews.jpg', title: 'News app', subtitle: 'This app shows most new and real news', androidLink: 'hy', otherLink: 'null'),
];