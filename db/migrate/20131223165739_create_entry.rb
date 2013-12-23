class CreateEntry < ActiveRecord::Migration
  def change
    create_table :entries do |t|
      t.string :title, null: false
      t.string :description, null: false
      t.integer :category_id
    end
  end
end
