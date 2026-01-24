class HomeEntity {
  final String image;
  final String title;
  final String pageName;
  final SubHomeEntity? subHome;

  const HomeEntity({
    required this.image,
    required this.title,
    required this.pageName,
    this.subHome,
  });
}

class SubHomeEntity {
  final String titleAppbar;
  final List<HomeEntity> data;
  const SubHomeEntity({required this.titleAppbar, required this.data});
}
