// To parse this JSON data, do
//
//     final myFlightApiModel = myFlightApiModelFromJson(jsonString);

import 'dart:convert';

MyFlightApiModel myFlightApiModelFromJson(String str) =>
    MyFlightApiModel.fromJson(json.decode(str));

String? myFlightApiModelToJson(MyFlightApiModel data) =>
    json.encode(data.toJson());

class MyFlightApiModel {
  MyFlightApiModel({
    this.pagination,
    this.data,
  });

  Pagination? pagination;
  List<Data>? data;

  factory MyFlightApiModel.fromJson(Map<String, dynamic> json) =>
      MyFlightApiModel(
        pagination: json["pagination"] == null
            ? null
            : Pagination.fromJson(json["pagination"]),
        data: json["data"] == null
            ? null
            : List<Data>.from(json["data"].map((x) => Data.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "pagination": pagination?.toJson(),
        "data": List<dynamic>.from(data!.map((x) => x.toJson())),
      };
}

class Data {
  Data({
    this.flightDate,
    this.flightStatus,
    this.departure,
    this.arrival,
    this.airline,
    this.flight,
    this.aircraft,
    this.live,
  });

  String? flightDate;
  String? flightStatus;
  Arrival? departure;
  Arrival? arrival;
  Airline? airline;
  Flight? flight;
  Aircraft? aircraft;
  Live? live;

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        flightDate: json["flight_date"] as String,
        flightStatus: json["flight_status"] as String,
        departure: json["departure"] == null
            ? null
            : Arrival.fromJson(json["departure"]),
        arrival:
            json["arrival"] == null ? null : Arrival.fromJson(json["arrival"]),
        airline:
            json["airline"] == null ? null : Airline.fromJson(json["airline"]),
        flight: json["flight"] == null ? null : Flight.fromJson(json["flight"]),
        aircraft: json["aircraft"] == null
            ? null
            : Aircraft.fromJson(json["aircraft"]),
        live: json["live"] == null ? null : Live.fromJson(json["live"]),
      );

  Map<String, dynamic> toJson() => {
        "flight_date": flightDate,
        "flight_status": flightStatus,
        "departure": departure?.toJson(),
        "arrival": arrival?.toJson(),
        "airline": airline?.toJson(),
        "flight": flight?.toJson(),
        "aircraft": aircraft?.toJson(),
        "live": live?.toJson(),
      };
}

class Aircraft {
  Aircraft({
    this.registration,
    this.iata,
    this.icao,
    this.icao24,
  });

  String? registration;
  String? iata;
  String? icao;
  String? icao24;

  factory Aircraft.fromJson(Map<String, dynamic> json) => Aircraft(
        registration: json["registration"],
        iata: json["iata"],
        icao: json["icao"],
        icao24: json["icao24"],
      );

  Map<String, dynamic> toJson() => {
        "registration": registration,
        "iata": iata,
        "icao": icao,
        "icao24": icao24,
      };
}

class Airline {
  Airline({
    this.name,
    this.iata,
    this.icao,
  });

  String? name;
  String? iata;
  String? icao;

  factory Airline.fromJson(Map<String, dynamic> json) => Airline(
        name: json["name"],
        iata: json["iata"],
        icao: json["icao"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "iata": iata,
        "icao": icao,
      };
}

class Arrival {
  Arrival({
    this.airport,
    this.timezone,
    this.iata,
    this.icao,
    this.terminal,
    this.gate,
    this.baggage,
    this.delay,
    this.scheduled,
    this.estimated,
    this.actual,
    this.estimatedRunway,
    this.actualRunway,
  });

  String? airport;
  String? timezone;
  String? iata;
  String? icao;
  String? terminal;
  String? gate;
  String? baggage;
  int? delay;
  DateTime? scheduled;
  String? estimated;
  String? actual;
  String? estimatedRunway;
  String? actualRunway;

  factory Arrival.fromJson(Map<String, dynamic> json) => Arrival(
        airport: json["airport"],
        timezone: json["timezone"],
        iata: json["iata"],
        icao: json["icao"],
        terminal: json["terminal"],
        gate: json["gate"],
        baggage: json["baggage"],
        delay: json["delay"],
        scheduled: json["scheduled"] == null
            ? null
            : DateTime.parse(json["scheduled"]),
        estimated: json["estimated"],
        actual: json["actual"],
        estimatedRunway: json["estimated_runway"],
        actualRunway: json["actual_runway"],
      );

  Map<String, dynamic> toJson() => {
        "airport": airport,
        "timezone": timezone,
        "iata": iata,
        "icao": icao,
        "terminal": terminal,
        "gate": gate,
        "baggage": baggage,
        "delay": delay,
        "scheduled": scheduled?.toIso8601String(),
        "estimated": estimated,
        "actual": actual,
        "estimated_runway": estimatedRunway,
        "actual_runway": actualRunway,
      };
}

class Flight {
  Flight({
    this.number,
    this.iata,
    this.icao,
    this.codeshared,
  });

  String? number;
  String? iata;
  String? icao;
  dynamic codeshared;

  factory Flight.fromJson(Map<String, dynamic> json) => Flight(
        number: json["number"],
        iata: json["iata"],
        icao: json["icao"],
        codeshared: json["codeshared"],
      );

  Map<String, dynamic> toJson() => {
        "number": number,
        "iata": iata,
        "icao": icao,
        "codeshared": codeshared,
      };
}

class Live {
  Live({
    this.updated,
    this.latitude,
    this.longitude,
    this.altitude,
    this.direction,
    this.speedHorizontal,
    this.speedVertical,
    this.isGround,
  });

  String? updated;
  double? latitude;
  double? longitude;
  double? altitude;
  double? direction;
  double? speedHorizontal;
  double? speedVertical;
  bool? isGround;

  factory Live.fromJson(Map<String, dynamic> json) => Live(
        updated: json["updated"],
        latitude: json["latitude"].toDouble(),
        longitude: json["longitude"].toDouble(),
        altitude: json["altitude"].toDouble(),
        direction: json["direction"].toDouble(),
        speedHorizontal: json["speed_horizontal"].toDouble(),
        speedVertical: json["speed_vertical"].toDouble(),
        isGround: json["is_ground"],
      );

  Map<String, dynamic> toJson() => {
        "updated": updated,
        "latitude": latitude,
        "longitude": longitude,
        "altitude": altitude,
        "direction": direction,
        "speed_horizontal": speedHorizontal,
        "speed_vertical": speedVertical,
        "is_ground": isGround,
      };
}

class Pagination {
  Pagination({
    this.limit,
    this.offset,
    this.count,
    this.total,
  });

  int? limit;
  int? offset;
  int? count;
  int? total;

  factory Pagination.fromJson(Map<String, dynamic> json) => Pagination(
        limit: json["limit"],
        offset: json["offset"],
        count: json["count"],
        total: json["total"],
      );

  Map<String, dynamic> toJson() => {
        "limit": limit,
        "offset": offset,
        "count": count,
        "total": total,
      };
}
