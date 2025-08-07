class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  enum role: { customer: 0, admin: 1 }

  has_many :products, dependent: :nullify
  has_many :categories, dependent: :nullify
  has_many :purchases, dependent: :destroy

  validates :email, presence: true, uniqueness: true
  validates :role, presence: true
  validates :address, presence: true
  validates :phone, presence: true
end
