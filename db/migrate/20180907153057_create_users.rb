class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :password
      t.string :city
      t.string :family_doctor
      t.string :sex
      t.integer :age
      t.text :note

      t.timestamps
    end
  end
end
