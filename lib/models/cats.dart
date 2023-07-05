class Cat {
  String? length;
  String? origin;
  String? imageLink;
  int? familyFriendly;
  int? shedding;
  int? generalHealth;
  int? playfulness;
  int? childrenFriendly;
  int? grooming;
  int? intelligence;
  int? otherPetsFriendly;
  double? minWeight;
  double? maxWeight;
  double? minLifeExpectancy;
  double? maxLifeExpectancy;
  String? name;

  Cat(
      {this.length,
        this.origin,
        this.imageLink,
        this.familyFriendly,
        this.shedding,
        this.generalHealth,
        this.playfulness,
        this.childrenFriendly,
        this.grooming,
        this.intelligence,
        this.otherPetsFriendly,
        this.minWeight,
        this.maxWeight,
        this.minLifeExpectancy,
        this.maxLifeExpectancy,
        this.name});

  Cat.fromJson(Map<String, dynamic> json) {
    length = json['length'];
    origin = json['origin'];
    imageLink = json['image_link'];
    familyFriendly = json['family_friendly'];
    shedding = json['shedding'];
    generalHealth = json['general_health'];
    playfulness = json['playfulness'];
    childrenFriendly = json['children_friendly'];
    grooming = json['grooming'];
    intelligence = json['intelligence'];
    otherPetsFriendly = json['other_pets_friendly'];
    minWeight = json['min_weight'];
    maxWeight = json['max_weight'];
    minLifeExpectancy = json['min_life_expectancy'];
    maxLifeExpectancy = json['max_life_expectancy'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['length'] = length;
    data['origin'] = origin;
    data['image_link'] = imageLink;
    data['family_friendly'] = familyFriendly;
    data['shedding'] = shedding;
    data['general_health'] = generalHealth;
    data['playfulness'] = playfulness;
    data['children_friendly'] = childrenFriendly;
    data['grooming'] = grooming;
    data['intelligence'] = intelligence;
    data['other_pets_friendly'] = otherPetsFriendly;
    data['min_weight'] = minWeight;
    data['max_weight'] = maxWeight;
    data['min_life_expectancy'] = minLifeExpectancy;
    data['max_life_expectancy'] = maxLifeExpectancy;
    data['name'] = name;
    return data;
  }
}
