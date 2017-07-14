class CreateRushingPerformances < ActiveRecord::Migration[5.1]
  def change
    create_table :rushing_performances do |t|
      t.column :player_name, :string, null: false
      t.column :team_abbreviation, :string, null: false
      t.column :position_abbreviation, :string, null: false
      t.column :attempts, :integer, null: false
      t.column :attempts_per_game, :float, null: false
      t.column :yards, :integer, null: false
      t.column :yards_per_attempt, :float, null: false
      t.column :yards_per_game, :float, null: false
      t.column :touchdowns, :integer, null: false
      t.column :long, :string, null: false
      t.column :first_downs, :integer, null: false
      t.column :first_down_percentage, :float, null: false
      t.column :twenty_plus, :integer, null: false
      t.column :forty_plus, :integer, null: false
      t.column :fumbles, :integer, null: false
    end
  end
end
