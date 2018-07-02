class HairsUser < ApplicationRecord
  belongs_to :user
  belongs_to :hair
end
