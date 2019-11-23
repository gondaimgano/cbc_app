class Feed {
  String heading;
  String description;
  String image;
  bool share;
  bool read;

  Feed({this.heading, this.description, this.image, this.share, this.read});

  Feed.fromJson(Map<String, dynamic> json) {
    heading = json['heading'];
    description = json['description'];
    image = json['image'];
    share = json['share'];
    read = json['read'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['heading'] = this.heading;
    data['description'] = this.description;
    data['image'] = this.image;
    data['share'] = this.share;
    data['read'] = this.read;
    return data;
  }
}