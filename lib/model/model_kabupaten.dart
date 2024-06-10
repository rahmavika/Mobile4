// To parse this JSON data, do
//
//     final modelKabupaten = modelKabupatenFromJson(jsonString);

import 'dart:convert';

ModelKabupaten modelKabupatenFromJson(String str) => ModelKabupaten.fromJson(json.decode(str));

String modelKabupatenToJson(ModelKabupaten data) => json.encode(data.toJson());

class ModelKabupaten {
  bool isSuccess;
  String message;
  List<Datum> data;

  ModelKabupaten({
    required this.isSuccess,
    required this.message,
    required this.data,
  });

  factory ModelKabupaten.fromJson(Map<String, dynamic> json) => ModelKabupaten(
    isSuccess: json["isSuccess"],
    message: json["message"],
    data: List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "isSuccess": isSuccess,
    "message": message,
    "data": List<dynamic>.from(data.map((x) => x.toJson())),
  };
}

class Datum {
  String id;
  String namaKabupaten;
  String provinsiId;

  Datum({
    required this.id,
    required this.namaKabupaten,
    required this.provinsiId,
  });

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
    id: json["id"],
    namaKabupaten: json["nama_kabupaten"],
    provinsiId: json["provinsi_id"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "nama_kabupaten": namaKabupaten,
    "provinsi_id": provinsiId,
  };
}