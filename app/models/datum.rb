class Datum < ApplicationRecord
  belongs_to :medical_information
  belongs_to :user
end
