// enhanced enum

enum PlanetType {
  terrestrial,
  gas,
  ice,
}

/// Enum that enumerates the different planets in our solar system
/// and some of their properties.
enum Planet {
  mercury(planetType: PlanetType.terrestrial, moons: 0, hasSings: false),
  venus(planetType: PlanetType.terrestrial, moons: 0, hasSings: false),
  urans(planetType: PlanetType.ice, moons: 27, hasSings: true),
  nepture(planetType: PlanetType.ice, moons: 14, hasSings: true);

  /// A constant generating constructor
  const Planet(
      {required this.planetType, required this.moons, required this.hasSings});

  /// All instance variables are final
  final PlanetType planetType;
  final moons;
  final hasSings;

  /// Enhanced enums support getters and other methods
  bool get isGiant =>
      PlanetType == PlanetType.gas || PlanetType == PlanetType.ice;
}

void main() {
  print('enhanced enum');
  final myPlanet = Planet.venus;

  if (!myPlanet.isGiant) {
    print('Your Planet is not Giant');
  }
}
