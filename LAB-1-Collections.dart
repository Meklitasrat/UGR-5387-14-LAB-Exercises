void main() {
  List<String> favoriteHobbies = ['Reading', 'Cooking', 'Playing Guitar'];

  print('My Favorite Hobbies: $favoriteHobbies');

  favoriteHobbies.add('Hiking');
  print('After adding a hobby: $favoriteHobbies');

  favoriteHobbies.remove('Cooking');
  print('After removing a hobby: $favoriteHobbies');

  favoriteHobbies.sort();
  print('After sorting: $favoriteHobbies');

  bool isEmpty = favoriteHobbies.isEmpty;
  print('Is the list empty? $isEmpty');
}
