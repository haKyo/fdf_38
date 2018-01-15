class Suggest < ApplicationRecord
  belongs_to :user
  belongs_to :category
  validates :product_name, presence: true, length: {maximum: Settings.suggests.max_length_name}
  validates :detail, presence: true, length: {maximum: Settings.suggests.max_length_detail}
end
