class Employee < ActiveRecord::Base
  belongs_to :store
    validates :first_name,:last_name, presence: {message: "must be given please"}, on: :create
    validates :hourly_rate , numericality: {only_integer: true, message: "%{value} seems wrong"}, on: :create
    validates :hourly_rate , inclusion: {in: 40..200}, on: :create
    validates :store, presence: true, on: :create
end
