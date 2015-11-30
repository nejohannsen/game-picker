class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :title
      t.text :description
      t.datetime :start
      t.integer :number_of_game_slots

      t.timestamps null: false
    end

    add_attachment :events, :image
  end
end
