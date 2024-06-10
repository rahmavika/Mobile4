// To parse this JSON data, do
//
//     final modelKamar = modelKamarFromJson(jsonString);

import 'dart:convert';

ModelKamar modelKamarFromJson(String str) => ModelKamar.fromJson(json.decode(str));

String modelKamarToJson(ModelKamar data) => json.encode(data.toJson());

class ModelKamar {
  bool isSuccess;
  String message;
  List<Datum> data;

  ModelKamar({
    required this.isSuccess,
    required this.message,
    required this.data,
  });

  factory ModelKamar.fromJson(Map<String, dynamic> json) => ModelKamar(
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
  String namaKamar;
  String kamarTersedia;
  String kamarKosong;
  String jumlahAntrian;
  String rumahsakitId;

  Datum({
    required this.id,
    required this.namaKamar,
    required this.kamarTersedia,
    required this.kamarKosong,
    required this.jumlahAntrian,
    required this.rumahsakitId,
  });

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
    id: json["id"],
    namaKamar: json["nama_kamar"],
    kamarTersedia: json["kamar_tersedia"],
    kamarKosong: json["kamar_kosong"],
    jumlahAntrian: json["jumlah_antrian"],
    rumahsakitId: json["rumahsakit_id"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "nama_kamar": namaKamar,
    "kamar_tersedia": kamarTersedia,
    "kamar_kosong": kamarKosong,
    "jumlah_antrian": jumlahAntrian,
    "rumahsakit_id": rumahsakitId,
  };
}