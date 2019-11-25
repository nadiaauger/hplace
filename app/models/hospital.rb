class Hospital < ApplicationRecord
  has_many :users, dependent: :destroy
  has_many :events, dependent: :destroy

end
