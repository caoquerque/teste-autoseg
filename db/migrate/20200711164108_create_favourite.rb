class CreateFavourite < ActiveRecord::Migration[6.0]
  def change
    create_table :favourite do |t|
      t.references :user, null: false, foreign_key: true
      t.references :todo, null: false, foreign_key: true

      t.timestamps
    end
  end
end
