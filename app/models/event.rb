class Event < ApplicationRecord
  has_one_attached :photo

  belongs_to :user
  belongs_to :hospital
  has_many :reservations, dependent: :destroy
  has_many :users, through: :reservations

  validates :name, presence: true
  validates :start, presence: true
  validates :end, presence: true
  validates :location, presence: true
  validates :description, presence: true

end
