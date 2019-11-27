class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  belongs_to :hospital
  has_many :reservations, dependent: :destroy
  has_many :events, through: :reservations, dependent: :destroy
  has_many :event_seen, dependent: :destroy

  has_one_attached :photo

  validates :username, presence: true, uniqueness: true
  validates :email, presence: true, uniqueness: true
end
