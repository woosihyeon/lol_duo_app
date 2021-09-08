

class Rotation {
  Rotation({
    this.freeChampionIds,
    this.freeChampionIdsForNewPlayers,
    this.maxNewPlayerLevel,
  });

  List<int>? freeChampionIds;
  List<int>? freeChampionIdsForNewPlayers;
  int? maxNewPlayerLevel;

  factory Rotation.fromJson(Map<String, dynamic> json) => Rotation(
    freeChampionIds: List<int>.from(json["freeChampionIds"].map((x) => x)),
    freeChampionIdsForNewPlayers: List<int>.from(json["freeChampionIdsForNewPlayers"].map((x) => x)),
    maxNewPlayerLevel: json["maxNewPlayerLevel"],
  );

  Map<String, dynamic> toJson() => {
    "freeChampionIds": List<dynamic>.from(freeChampionIds!.map((x) => x)),
    "freeChampionIdsForNewPlayers": List<dynamic>.from(freeChampionIdsForNewPlayers!.map((x) => x)),
    "maxNewPlayerLevel": maxNewPlayerLevel,
  };
}
