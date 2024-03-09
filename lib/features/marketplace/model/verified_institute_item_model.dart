class VerifiedInstituteItemModel {
  VerifiedInstituteItemModel({
    this.verified,
    this.shiskaCoaching,
    this.fortyFive,
    this.text,
    this.kmsCounter,
    this.text1,
    this.kalkaji,
    this.academics,
    this.text2,
    this.com,
    this.text3,
    this.sci,
    this.id,
  }) {
    verified = verified ?? "Verified";
    shiskaCoaching = shiskaCoaching ?? "Shiska Coaching Center";
    fortyFive = fortyFive ?? "4.5";
    text = text ?? "·";
    kmsCounter = kmsCounter ?? "3 kms";
    text1 = text1 ?? "·";
    kalkaji = kalkaji ?? "Kalkaji";
    academics = academics ?? "Academics";
    text2 = text2 ?? "·";
    com = com ?? "Com";
    text3 = text3 ?? "·";
    sci = sci ?? "Sci";
    id = id ?? "";
  }

  String? verified;

  String? shiskaCoaching;

  String? fortyFive;

  String? text;

  String? kmsCounter;

  String? text1;

  String? kalkaji;

  String? academics;

  String? text2;

  String? com;

  String? text3;

  String? sci;

  String? id;
}
