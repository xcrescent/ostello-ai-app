import '../../../const/resource.dart';

class EighteenItemModel {
  EighteenItemModel({
    this.offer,
    this.verified,
    this.verified1,
    this.shiskaCoaching,
    this.fortyFive,
    this.rating,
    this.academics,
    this.text,
    this.com,
    this.text1,
    this.sci,
    this.kalkaji,
    this.text2,
    this.kmsCounter,
    this.id,
  }) {
    offer = offer ?? "Flat\n50% off ";
    verified = verified ?? "Verified";
    verified1 = verified1 ?? R.imgUntitledDesign4;
    shiskaCoaching = shiskaCoaching ?? "Shiska Coaching Center";
    fortyFive = fortyFive ?? "4.5";
    rating = rating ?? "(100+ Rating)";
    academics = academics ?? "All Subjects";
    text = text ?? "·";
    com = com ?? "Com";
    text1 = text1 ?? "·";
    sci = sci ?? "Sci";
    kalkaji = kalkaji ?? "Kalkaji";
    text2 = text2 ?? "·";
    kmsCounter = kmsCounter ?? "3 kms";
    id = id ?? "";
  }

  String? offer;

  String? verified;

  String? verified1;

  String? shiskaCoaching;

  String? fortyFive;

  String? rating;

  String? academics;

  String? text;

  String? com;

  String? text1;

  String? sci;

  String? kalkaji;

  String? text2;

  String? kmsCounter;

  String? id;
}
