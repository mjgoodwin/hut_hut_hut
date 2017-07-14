require 'csv'

class RushingPerformance < ActiveRecord::Base
  def self.to_csv
    attributes = %w(player_name team_abbreviation position_abbreviation attempts attempts_per_game yards yards_per_attempt yards_per_game touchdowns long first_downs first_down_percentage twenty_plus forty_plus fumbles)
    CSV.generate(headers: true) do |csv|
      csv << attributes

      all.each do |user|
        csv << attributes.map{ |attr| user.send(attr) }
      end
    end
  end
end
