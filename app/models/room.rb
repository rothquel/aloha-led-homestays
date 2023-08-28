class Room < ApplicationRecord
  belongs_to :host
  has_many :stays

  attr_accessor :number_of_rooms

  before_create :set_default_title

  private

  def set_default_title
    # Find the host associated with this room
    host = Host.find(host_id)

    # Calculate the room number based on the existing rooms for the same host
    room_number = host.rooms.count + 1

    # Set the default title as "Last Name Room #{room_number}"
    self.title = "#{host.last_name} Ohana - Room #{room_number}"
  end
end
