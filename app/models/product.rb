class Product < ApplicationRecord
  belongs_to :manufacturer, dependent: :destroy 

  validates :product_name, presence: true
  validates :manufacturer, presence: true
  validates :price, presence: true
  validates :number_in_stock, presence: true
  validates :average_rating, presence: true
  validates :description, presence: true, length: { minimum: 10 }
  validates :product_information, presence: true, length: { minimum: 10 }
end
