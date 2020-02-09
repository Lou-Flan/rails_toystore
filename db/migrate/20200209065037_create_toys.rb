class CreateToys < ActiveRecord::Migration[5.2]
  def change
    create_table :toys do |t|
      t.string :name
      t.text :description
      t.text :picture
      t.date :posted
      t.string :user

      t.timestamps
    end
  end
end
