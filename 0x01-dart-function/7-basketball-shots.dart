int whoWins(Map<String, int> teamA, Map<String, int> teamB) {
  int points_team_a = (teamA['Free throws'] ?? 0) +
    (teamA['2 pointers'] ?? 0) * 2 + (teamA['3 pointers'] ?? 0) * 3;
  int points_team_b = (teamB['Free throws'] ?? 0) +
    (teamB['2 pointers'] ?? 0) * 2 + (teamB['3 pointers'] ?? 0) * 3;
  
  if (points_team_a == points_team_b) return 0;
  return points_team_a > points_team_b ? 1 : 2;
}
