class RemovUserIsFromCars < ActiveRecord::Migration[7.0]
  def change
    remove_column :cars, :user_id
  end
end
