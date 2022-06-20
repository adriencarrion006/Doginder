class Dog < ApplicationRecord
  has_many :matches
  has_many :dog_interests
  has_many :interests, through: :dog_interests
  belongs_to :user
  has_many_attached :photos
end
