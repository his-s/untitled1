class DataModel {
  String name;
  String password;
  DataModel(this.name, this.password);
  toMap() => {
        "name": name,
        "password": password,
      };
}
