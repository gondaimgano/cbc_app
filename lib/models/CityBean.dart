class CityBean {
  String city;

  CityBean({this.city});

  CityBean.fromJson(Map<String, dynamic> json) {
    city = json['city']??"Harare";
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['city'] = this.city;
    return data;
  }
}