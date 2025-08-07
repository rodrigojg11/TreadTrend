class Category < ApplicationRecord
  belongs_to :user
  has_many :product_categories, dependent: :destroy
  has_many :products, through: :product_categories

  validates :name, presence: true
  validates :description, presence: true
end
