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

  has_many :messages, dependent: :destroy

  has_many :bookings, through: :events, source: :reservations

  has_one_attached :photo

  validates :username, presence: true, uniqueness: true
  validates :email, presence: true, uniqueness: true

  def number_of_notifications
    nb_of_notif = reservations_on_my_own_events_not_yet_seen.count
    nb_of_notif += events_created_by_someone_else_not_seen_yet.count
    return nb_of_notif
  end

  def events_created_by_someone_else_not_seen_yet
    events = []
    hospital.events.where.not(user: self).each do |event|
      if EventSeen.find_by(user: self, event: event).nil?
        events << event
      end
    end
    events
  end

  def reservations_on_my_own_events_already_seen
    bookings.where(notified: true).where.not(user_id: id)
  end

  def events_created_by_someone_else_already_seen
    events = []
    hospital.events.where.not(user: self).each do |event|
      if EventSeen.find_by(user: self, event: event)
        events << event
      end
    end
    events
  end

  def reservations_on_my_own_events_not_yet_seen
    bookings.where(notified: false).where.not(user_id: id)
  end

  def unseen_notifications
    events_created_by_someone_else_not_seen_yet + reservations_on_my_own_events_not_yet_seen
  end

  def seen_notifications
    events_created_by_someone_else_already_seen + reservations_on_my_own_events_already_seen
  end
end
