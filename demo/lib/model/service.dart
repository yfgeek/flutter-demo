class Service {
  final String name;

  final String image;

  Service({this.name, this.image});

  static List<Service> allSerVice() {
    var services = List<Service>();

    services.add(Service(
      name: "社保查询",
      image: "assets/s1.png",
    ));
    services.add(Service(
      name: "公积查询",
      image: "assets/s2.png",
    ));
    services.add(Service(
      name: "律师查询",
      image: "assets/s3.png",
    ));
    services.add(Service(
      name: "天气预报",
      image: "assets/s4.png",
    ));
    services.add(Service(
      name: "空气质量",
      image: "assets/s5.png",
    ));
    services.add(Service(
      name: "航班信息",
      image: "assets/s6.png",
    ));
    services.add(Service(
      name: "违章查询",
      image: "assets/s7.png",
    ));
    services.add(Service(
      name: "快递查询",
      image: "assets/s8.png",
    ));
    services.add(Service(
      name: "按部门查询",
      image: "assets/s9.png",
    ));
    return services;
  }
}