class Recipe < ApplicationRecord
  belongs_to :user
  has_many :comments
  validates :name, :description, presence: true
  has_many_attached :photos

end
