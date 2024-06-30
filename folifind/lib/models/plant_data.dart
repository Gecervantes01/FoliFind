// To parse this JSON data, do
//
//     final plantData = plantDataFromJson(jsonString);

import 'dart:convert';

List<PlantData> plantDataFromJson(String str) => List<PlantData>.from(json.decode(str).map((x) => PlantData.fromJson(x)));

String plantDataToJson(List<PlantData> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class PlantData {
    List<Datum> data;
    PlantDataLinks links;
    Meta meta;

    PlantData({
        required this.data,
        required this.links,
        required this.meta,
    });

    factory PlantData.fromJson(Map<String, dynamic> json) => PlantData(
        data: List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
        links: PlantDataLinks.fromJson(json["links"]),
        meta: Meta.fromJson(json["meta"]),
    );

    Map<String, dynamic> toJson() => {
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
        "links": links.toJson(),
        "meta": meta.toJson(),
    };
}

class Datum {
    int id;
    String commonName;
    String slug;
    String scientificName;
    int year;
    String bibliography;
    String author;
    Status status;
    Rank rank;
    String? familyCommonName;
    int genusId;
    String imageUrl;
    List<String> synonyms;
    String genus;
    String family;
    DatumLinks links;

    Datum({
        required this.id,
        required this.commonName,
        required this.slug,
        required this.scientificName,
        required this.year,
        required this.bibliography,
        required this.author,
        required this.status,
        required this.rank,
        required this.familyCommonName,
        required this.genusId,
        required this.imageUrl,
        required this.synonyms,
        required this.genus,
        required this.family,
        required this.links,
    });

    factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        id: json["id"],
        commonName: json["common_name"],
        slug: json["slug"],
        scientificName: json["scientific_name"],
        year: json["year"],
        bibliography: json["bibliography"],
        author: json["author"],
        status: statusValues.map[json["status"]]!,
        rank: rankValues.map[json["rank"]]!,
        familyCommonName: json["family_common_name"],
        genusId: json["genus_id"],
        imageUrl: json["image_url"],
        synonyms: List<String>.from(json["synonyms"].map((x) => x)),
        genus: json["genus"],
        family: json["family"],
        links: DatumLinks.fromJson(json["links"]),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "common_name": commonName,
        "slug": slug,
        "scientific_name": scientificName,
        "year": year,
        "bibliography": bibliography,
        "author": author,
        "status": statusValues.reverse[status],
        "rank": rankValues.reverse[rank],
        "family_common_name": familyCommonName,
        "genus_id": genusId,
        "image_url": imageUrl,
        "synonyms": List<dynamic>.from(synonyms.map((x) => x)),
        "genus": genus,
        "family": family,
        "links": links.toJson(),
    };
}

class DatumLinks {
    String self;
    String plant;
    String genus;

    DatumLinks({
        required this.self,
        required this.plant,
        required this.genus,
    });

    factory DatumLinks.fromJson(Map<String, dynamic> json) => DatumLinks(
        self: json["self"],
        plant: json["plant"],
        genus: json["genus"],
    );

    Map<String, dynamic> toJson() => {
        "self": self,
        "plant": plant,
        "genus": genus,
    };
}

enum Rank {
    SPECIES
}

final rankValues = EnumValues({
    "species": Rank.SPECIES
});

enum Status {
    ACCEPTED
}

final statusValues = EnumValues({
    "accepted": Status.ACCEPTED
});

class PlantDataLinks {
    String self;
    String first;
    String next;
    String last;

    PlantDataLinks({
        required this.self,
        required this.first,
        required this.next,
        required this.last,
    });

    factory PlantDataLinks.fromJson(Map<String, dynamic> json) => PlantDataLinks(
        self: json["self"],
        first: json["first"],
        next: json["next"],
        last: json["last"],
    );

    Map<String, dynamic> toJson() => {
        "self": self,
        "first": first,
        "next": next,
        "last": last,
    };
}

class Meta {
    int total;

    Meta({
        required this.total,
    });

    factory Meta.fromJson(Map<String, dynamic> json) => Meta(
        total: json["total"],
    );

    Map<String, dynamic> toJson() => {
        "total": total,
    };
}

class EnumValues<T> {
    Map<String, T> map;
    late Map<T, String> reverseMap;

    EnumValues(this.map);

    Map<T, String> get reverse {
            reverseMap = map.map((k, v) => MapEntry(v, k));
            return reverseMap;
    }
}