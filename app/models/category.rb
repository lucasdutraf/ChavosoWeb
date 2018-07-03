class Category < ApplicationRecord
  has_many :hairs
  belongs_to  :users
end
