class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  belongs_to :hospital
  has_many :reservations, dependent: :destroy
  has_many :events
  has_many :reserved_events, through: :reservations, source: :events
  has_many :event_seen, dependent: :destroy
  has_many :bookings, through: :events, source: :reservations

  has_one_attached :photo

  validates :username, presence: true, uniqueness: true
  validates :email, presence: true, uniqueness: true

  def number_of_notifications
    bookings.where(notified: false).count
  end

end
