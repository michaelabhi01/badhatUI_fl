import 'package:badhat_b2b/data/vertical_entity.dart';


verticalEntityFromJson(VerticalEntity data, Map<String, dynamic> json) {
  if (json['data'] != null) {
    data.data = new List<VerticalData>();
    (json['data'] as List).forEach((v) {
      data.data.add(new VerticalData().fromJson(v));
    });
  }
  if (json['message'] != null) {
    data.message = json['message']?.toString();
  }
  return data;
}

Map<String, dynamic> verticalEntityToJson(VerticalEntity entity) {
  final Map<String, dynamic> data = new Map<String, dynamic>();
  if (entity.data != null) {
    data['data'] =  entity.data.map((v) => v.toJson()).toList();
  }
  data['message'] = entity.message;
  return data;
}

verticalDataFromJson(VerticalData data, Map<String, dynamic> json) {
  if (json['id'] != null) {
    data.id = json['id']?.toInt();
  }
  if (json['name'] != null) {
    data.name = json['name']?.toString();
  }
  if (json['created_at'] != null) {
    data.createdAt = json['created_at']?.toString();
  }
  if (json['updated_at'] != null) {
    data.updatedAt = json['updated_at']?.toString();
  }
  return data;
}

Map<String, dynamic> verticalDataToJson(VerticalData entity) {
  final Map<String, dynamic> data = new Map<String, dynamic>();
  data['id'] = entity.id;
  data['name'] = entity.name;
  data['created_at'] = entity.createdAt;
  data['updated_at'] = entity.updatedAt;
  return data;
}