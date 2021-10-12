class Store < ActiveRecord::Base
  has_many :employees
  validates :name, length: {minimum: 3}, on: :create
  validates :annual_revenue, numericality:  {only_integer: true, message: "%{value} seems wrong"},  on: :create
  validates :mens_apparel, :womens_apparel, presence: {message: "Can't leave blank"}, unless: -> {
    womens_apparel.blank? || mens_apparel.blank?} , on: :create
end
