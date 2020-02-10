class ChangeColumn < ActiveRecord::Migration[5.2]
  def change
    create_table :toys do |t|
      t.string :name
      t.text :description
      t.text :picture
      t.date :posted
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
