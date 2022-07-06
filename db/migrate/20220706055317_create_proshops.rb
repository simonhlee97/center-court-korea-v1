class CreateProshops < ActiveRecord::Migration[7.0]
  def change
    create_table :proshops do |t|
      t.string :name
      t.string :city, default: 'Seoul'
      t.string :address
      t.string :phone, default: '032-9999-9999'
      t.string :website, default: 'www.example.com'

      t.timestamps
    end
  end
end
