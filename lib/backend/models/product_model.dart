// ignore_for_file: no_leading_underscores_for_local_identifiers

class ProductModel {
  ProductModel({
    required this.status,
    required this.data,
  });
  late final int status;
  late final List<Data> data;

  ProductModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    data = List.from(json['data']).map((e) => Data.fromJson(e)).toList();
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['status'] = status;
    _data['data'] = data.map((e) => e.toJson()).toList();
    return _data;
  }
}

class Data {
  Data({
    required this.id,
    required this.name,
    required this.value,
    required this.price,
  });
  late final int id;
  late final String name;
  late final String value;
  late final String price;

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    value = json['value'];
    price = json['price'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['name'] = name;
    _data['value'] = value;
    _data['price'] = price;
    return _data;
  }
}
