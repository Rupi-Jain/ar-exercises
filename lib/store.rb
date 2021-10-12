class Store < ActiveRecord::Base
  has_many :employees, autosave: true
end
