class CreateTasks < ActiveRecord::Migration[6.0]
  def change
    create_table :tasks do |t|
      t.string :description
      t.boolean :done
      t.references :to_do_list, null: false, foreign_key: true

      t.timestamps
    end
  end
end
