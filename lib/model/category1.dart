
class Category {
  String id;      // Optional: ID will be generated by Firebase
  String name;
  String icon;

  Category({required this.id, required this.name, required this.icon});

  // Convert a Category into a Map. The keys must correspond to the database fields.
  Map<String, dynamic> toMap() {
    return {
      'id': id, // Include the ID in the map
      'name': name,
      'icon': icon,
    };
  }

  // Create a Category from a Map
  factory Category.fromMap(Map<String, dynamic> map, String id) {
    return Category(
      id: id,
      name: map['name'],
      icon: map['icon'],
    );
  }
}
