class CreateIngredients < ActiveRecord::Migration
  def change
    create_table :ingredients do |t|
      t.integer :list_id
      t.integer :user_id
      t.string :description

      t.timestamps null: false
    end
  end
end
