class User < ApplicationRecord
    has_many :medical_informations 
    has_many :data, through: :medical_informations
end
