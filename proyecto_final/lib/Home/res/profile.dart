class Profile {
  final String name;
  final String location;
  final String imageUrl;
  final String description;
  final int reviewsCount;
  final int listingsCount;
  final bool isAdmin;
  final bool isAnfitrion;
  final List<String> favoriteListings;

  Profile({
    required this.name,
    required this.location,
    required this.imageUrl,
    required this.description,
    required this.reviewsCount,
    required this.listingsCount,
    required this.isAdmin,
    required this.isAnfitrion,
    required this.favoriteListings,
  });
}