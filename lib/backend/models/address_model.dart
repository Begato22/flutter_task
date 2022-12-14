// ignore_for_file: no_leading_underscores_for_local_identifiers

class AddressModel {
  AddressModel({
    required this.status,
    required this.data,
  });
  late final int status;
  late final List<Data> data;

  AddressModel.fromJson(Map<String, dynamic> json) {
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
    required this.addressTitle,
    required this.address,
  });
  late final String addressTitle;
  late final String address;

  Data.fromJson(Map<String, dynamic> json) {
    addressTitle = json['address_title'];
    address = json['address'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['address_title'] = addressTitle;
    _data['address'] = address;
    return _data;
  }
}
