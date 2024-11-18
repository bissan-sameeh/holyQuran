import 'package:holyquran/Model/surah_class.dart';

import 'edition.dart';

class DataSec {
  int? number;
  String? text;
  Edition? edition;
  Surah? surah;
  int? numberInSurah;
  int? juz;
  int? manzil;
  int? page;
  int? ruku;
  int? hizbQuarter;
  bool? sajda;

  DataSec({
    this.number,
    this.text,
    this.edition,
    this.surah,
    this.numberInSurah,
    this.juz,
    this.manzil,
    this.page,
    this.ruku,
    this.hizbQuarter,
    this.sajda,
  });

  factory DataSec.fromJson(Map<String, dynamic> json) => DataSec(
    number: json["number"],
    text: json["text"],
    edition:
    json["edition"] == null ? null : Edition.fromJson(json["edition"]),
    surah: json["surah"] == null ? null : Surah.fromJson(json["surah"]),
    numberInSurah: json["numberInSurah"],
    juz: json["juz"],
    manzil: json["manzil"],
    page: json["page"],
    ruku: json["ruku"],
    hizbQuarter: json["hizbQuarter"],
    sajda: json["sajda"],
  );

  Map<String, dynamic> toJson() => {
    "number": number,
    "text": text,
    "edition": edition?.toJson(),
    "surah": surah?.toJson(),
    "numberInSurah": numberInSurah,
    "juz": juz,
    "manzil": manzil,
    "page": page,
    "ruku": ruku,
    "hizbQuarter": hizbQuarter,
    "sajda": sajda,
  };
}
