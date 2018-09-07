class MedicalInformation < ApplicationRecord
  belongs_to :user
  has_many :data
end
