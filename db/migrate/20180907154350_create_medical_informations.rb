class CreateMedicalInformations < ActiveRecord::Migration[5.2]
  def change
    create_table :medical_informations do |t|
      t.string :data_type
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
