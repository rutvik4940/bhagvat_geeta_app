class ChapterModel {
  int? id;
  String? title, name, url, shloka, gshloka, eshloka;

  ChapterModel(
      {this.id,
      this.title,
      this.name,
      this.url,
      this.shloka,
      this.gshloka,
      this.eshloka,
      });

  factory ChapterModel.mapToModel(Map m1) {
    return ChapterModel(
      id: m1['id'],
      title: m1['title'],
      name: m1['name'],
      url: m1['url'],
      shloka: m1['shloka'],
      gshloka: m1['gshloka'],
      eshloka: m1['eshloka'],
    );
  }
}
