class CreateApplications < ActiveRecord::Migration[5.2]
  def change
    create_table :applications do |t|
      t.string :name
      t.date :dob
      t.string :country
      t.string :email
      t.string :homeaddress
      t.boolean :gender
      t.date :arrival_date
      t.string :destination
      t.string :passport_number
      t.date :passport_issued
      t.date :passport_expire
      t.decimal :price

      t.timestamps
    end
  end
end
