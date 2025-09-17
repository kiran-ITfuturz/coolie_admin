
class PendingCooliList {
  Image? image;
  RateCard? rateCard;
  dynamic latitude;
  dynamic longitude;
  dynamic currentBookingId;
  String? id;
  String? name;
  String? mobileNo;
  String? age;
  String? deviceType;
  String? emailId;
  String? gender;
  String? buckleNumber;
  String? address;
  String? faceId;
  bool? isApproved;
  bool? isActive;
  bool? isLoggedIn;
  dynamic lastLoginTime;
  String? fcm;
  String? rating;
  String? totalRatings;
  String? completedBookings;
  String? rejectedBookings;
  bool? isDeleted;
  DateTime? createdAt;
  DateTime? updatedAt;
  String? v;

  PendingCooliList({
    this.image,
    this.rateCard,
    this.latitude,
    this.longitude,
    this.currentBookingId,
    this.id,
    this.name,
    this.mobileNo,
    this.age,
    this.deviceType,
    this.emailId,
    this.gender,
    this.buckleNumber,
    this.address,
    this.faceId,
    this.isApproved,
    this.isActive,
    this.isLoggedIn,
    this.lastLoginTime,
    this.fcm,
    this.rating,
    this.totalRatings,
    this.completedBookings,
    this.rejectedBookings,
    this.isDeleted,
    this.createdAt,
    this.updatedAt,
    this.v,
  });

  factory PendingCooliList.fromJson(Map<String, dynamic> json) => PendingCooliList(
    image: Image.fromJson(json["image"]),
    rateCard: RateCard.fromJson(json["rateCard"]),
    latitude: json["latitude"],
    longitude: json["longitude"],
    currentBookingId: json["currentBookingId"],
    id: json["_id"],
    name: json["name"],
    mobileNo: json["mobileNo"],
    age: json["age"],
    deviceType: json["deviceType"],
    emailId: json["emailId"],
    gender: json["gender"],
    buckleNumber: json["buckleNumber"],
    address: json["address"],
    faceId: json["faceId"],
    isApproved: json["isApproved"],
    isActive: json["isActive"],
    isLoggedIn: json["isLoggedIn"],
    lastLoginTime: json["lastLoginTime"],
    fcm: json["fcm"],
    rating: json["rating"],
    totalRatings: json["totalRatings"],
    completedBookings: json["completedBookings"],
    rejectedBookings: json["rejectedBookings"],
    isDeleted: json["isDeleted"],
    createdAt: DateTime.parse(json["createdAt"]),
    updatedAt: DateTime.parse(json["updatedAt"]),
    v: json["__v"],
  );

  Map<String, dynamic> toJson() => {
    "image": image?.toJson(),
    "rateCard": rateCard?.toJson(),
    "latitude": latitude,
    "longitude": longitude,
    "currentBookingId": currentBookingId,
    "_id": id,
    "name": name,
    "mobileNo": mobileNo,
    "age": age,
    "deviceType": deviceType,
    "emailId": emailId,
    "gender": gender,
    "buckleNumber": buckleNumber,
    "address": address,
    "faceId": faceId,
    "isApproved": isApproved,
    "isActive": isActive,
    "isLoggedIn": isLoggedIn,
    "lastLoginTime": lastLoginTime,
    "fcm": fcm,
    "rating": rating,
    "totalRatings": totalRatings,
    "completedBookings": completedBookings,
    "rejectedBookings": rejectedBookings,
    "isDeleted": isDeleted,
    "createdAt": createdAt?.toIso8601String(),
    "updatedAt": updatedAt?.toIso8601String(),
    "__v": v,
  };
}

class Image {
  String? url;
  String? s3Key;

  Image({
    this.url,
    this.s3Key,
  });

  factory Image.fromJson(Map<String, dynamic> json) => Image(
    url: json["url"],
    s3Key: json["s3Key"],
  );

  Map<String, dynamic> toJson() => {
    "url": url,
    "s3Key": s3Key,
  };
}

class RateCard {
  String? baseRate;
  String? baseTime;
  String? waitingRate;

  RateCard({
    this.baseRate,
    this.baseTime,
    this.waitingRate,
  });

  factory RateCard.fromJson(Map<String, dynamic> json) => RateCard(
    baseRate: json["baseRate"],
    baseTime: json["baseTime"],
    waitingRate: json["waitingRate"],
  );

  Map<String, dynamic> toJson() => {
    "baseRate": baseRate,
    "baseTime": baseTime,
    "waitingRate": waitingRate,
  };
}
