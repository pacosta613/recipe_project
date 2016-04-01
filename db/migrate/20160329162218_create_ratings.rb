class CreateRatings < ActiveRecord::Migration
  def change
    create_table :ratings do |t|
      t.integer :star_rating
      t.integer :list_id
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
