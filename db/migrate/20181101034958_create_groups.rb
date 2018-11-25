class CreateGroups < ActiveRecord::Migration[5.2]
  def change
    create_table :groups do |t|
      t.string :name
      t.references :group_leader, foreign_key: true
      t.text :player_list
      t.timestamps
    end
  end
end
