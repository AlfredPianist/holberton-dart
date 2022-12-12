String longestUniqueSubstring(String s) {
  Map<String, int> characters_map = Map<String, int>();
  int cursor = 0;
  int start_index = 0;
  int max_length = 0;

  for (int i = 0; i < s.length; i++) {
    String current_character = s[i];
    bool is_character_in_map =
        characters_map[current_character] != null && characters_map[current_character]! >= cursor;

    if (is_character_in_map) {
      cursor = characters_map[current_character]! + 1;
    }

    characters_map[current_character] = i;
    bool is_new_string_longer = max_length < i - cursor + 1;

    if (is_new_string_longer) {
      max_length = i - cursor + 1;
      start_index = cursor;
    }
  }
  return s.substring(start_index, start_index + max_length);
}
