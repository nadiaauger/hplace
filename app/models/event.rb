class Event < ApplicationRecord
  has_one_attached :photo
  after_create :broadcast_notification

  belongs_to :user
  belongs_to :hospital
  has_one :chat_room, dependent: :destroy
  has_many :reservations, dependent: :destroy
  has_many :users, through: :reservations
  has_many :event_seen, dependent: :destroy

  validates :name, presence: true
  validates :start, presence: true
  validates :end, presence: true
  validates :location, presence: true
  validates :description, presence: true

  private

  def broadcast_notification
    hospital.users.each do |patient|
      if patient != self.user
        ActionCable.server.broadcast("notification_for_user#{patient.id}", number_of_notifs: patient.number_of_notifications)
      end
    end
  end
end
