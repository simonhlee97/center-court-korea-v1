class ChangeGenderForUsers < ActiveRecord::Migration[7.0]
  def change
    change_column :users, :gender, :string, default: 'M'
  end
end
