class CreateGames < ActiveRecord::Migration[5.2]
  def change
    create_table :games do |t|
      t.references :home_team, foreign_key: true
      t.references :away_team, foreign_key: true
      t.references :winning_team, foreign_key: true
      t.references :losing_team, foreign_key: true
      t.integer :winning_score
      t.integer :losing_score
      t.integer :week
      t.integer :year

      t.timestamps
    end
  end
end
