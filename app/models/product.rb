class Product < ApplicationRecord
  belongs_to :user
  has_many :product_categories, dependent: :destroy
  has_many :categories, through: :product_categories
  has_many :purchases, dependent: :destroy

  #has_many_attached :images

  validates :name, presence: true
  validates :description, presence: true
  validates :price, presence: true, numericality: { greater_than_or_equal_to: 0 }
  validates :stock, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
end
