import 'dart:io';
class Candidate {
  final String firstName;
  final String lastName;
  final File? imageFile; // Ajoutez cette ligne
  final String description;

  Candidate({required this.firstName, required this.lastName, this.imageFile, required this.description, required DateTime birthDate}); // Mettez à jour cette ligne
}
