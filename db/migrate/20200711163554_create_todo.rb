class CreateTodo < ActiveRecord::Migration[6.0]
  def change
    create_table :todo do |t|
      t.boolean :public, default: false
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
