class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.string :title
      t.text :description

      t.integer :num_of_coop_players
      t.integer :num_of_vs_players

      t.timestamps null: false
    end

    add_attachment :games, :image
  end
end
