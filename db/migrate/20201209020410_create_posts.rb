class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
      t.string :title,            null: false
      t.text :about,              null: false
      t.date :day
      t.string :town
      t.string :number
      t.string :building
      t.references :user,         foreign_key: true
      t.integer :city_id,        null: false
      t.timestamps
    end
  end
end
