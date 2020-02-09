class RemovePostedFromToys < ActiveRecord::Migration[5.2]
  def change
    remove_column :toys, :posted, :date
  end
end
