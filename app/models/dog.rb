class Dog < ApplicationRecord
  has_many :dog_interests
  has_many :interests, through: :dog_interests
end
