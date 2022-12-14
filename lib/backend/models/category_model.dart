class CategoryModel {
  CategoryModel({
    required this.status,
    required this.data,
  });
  late final int status;
  late final List<Data> data;

  CategoryModel.fromJson(Map<String, dynamic> json){
    status = json['status'];
    data = List.from(json['data']).map((e)=>Data.fromJson(e)).toList();
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['status'] = status;
    _data['data'] = data.map((e)=>e.toJson()).toList();
    return _data;
  }
}

class Data {
  Data({
    required this.name,
    required this.itemsNumber,
  });
  late final String name;
  late final int itemsNumber;

  Data.fromJson(Map<String, dynamic> json){
    name = json['name'];
    itemsNumber = json['items_number'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['name'] = name;
    _data['items_number'] = itemsNumber;
    return _data;
  }
}