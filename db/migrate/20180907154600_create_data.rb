class CreateData < ActiveRecord::Migration[5.2]
  def change
    create_table :data do |t|
      t.float :data_value
      t.references :medical_information, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
