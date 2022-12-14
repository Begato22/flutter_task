class DealModel {
  DealModel({
    required this.status,
    required this.data,
  });
  late final int status;
  late final List<Data> data;

  DealModel.fromJson(Map<String, dynamic> json){
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
    required this.dealId,
    required this.dealName,
    required this.pieces,
    required this.duration,
    required this.price,
    required this.oldPrice,
  });
  late final int dealId;
  late final String dealName;
  late final int pieces;
  late final int duration;
  late final int price;
  late final int oldPrice;

  Data.fromJson(Map<String, dynamic> json){
    dealId = json['deal_id'];
    dealName = json['deal_name'];
    pieces = json['pieces'];
    duration = json['duration'];
    price = json['price'];
    oldPrice = json['old_price'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['deal_id'] = dealId;
    _data['deal_name'] = dealName;
    _data['pieces'] = pieces;
    _data['duration'] = duration;
    _data['price'] = price;
    _data['old_price'] = oldPrice;
    return _data;
  }
}