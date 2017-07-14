json = ActiveSupport::JSON.decode(File.read('db/seeds/rushing.json'))

json.each do |rp|
  RushingPerformance.create!(
    player_name: rp['player_name'],
    team_abbreviation: rp['team_abbreviation'],
    position_abbreviation: rp['position_abbreviation'],
    attempts: rp['attempts'],
    attempts_per_game: rp['attempts_per_game'],
    yards: rp['yards'],
    yards_per_attempt: rp['yards_per_attempt'],
    yards_per_game: rp['yards_per_game'],
    touchdowns: rp['touchdowns'],
    long: rp['long'],
    first_downs: rp['first_downs'],
    first_down_percentage: rp['first_down_percentage'],
    twenty_plus: rp['twenty_plus'],
    forty_plus: rp['forty_plus'],
    fumbles: rp['fumbles']
  )
end
