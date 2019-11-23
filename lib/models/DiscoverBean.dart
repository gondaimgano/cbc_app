class DiscoverBean {
  String title;
  List<Group> group;

  DiscoverBean({this.title, this.group});

  DiscoverBean.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    if (json['group'] != null) {
      group = new List<Group>();
      json['group'].forEach((v) {
        group.add(new Group.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['title'] = this.title;
    if (this.group != null) {
      data['group'] = this.group.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Group {
  String header;
  String image;

  Group({this.header, this.image});

  Group.fromJson(Map<String, dynamic> json) {
    header = json['header'];
    image = json['image'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['header'] = this.header;
    data['image'] = this.image;
    return data;
  }
}