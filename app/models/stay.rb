class Stay < ApplicationRecord
  belongs_to :student
  belongs_to :room

   # Define a virtual attribute for host
  attr_accessor :host

   # Getter method for host
  def host
    @host || room&.host
  end

   # Setter method for host
  def host=(value)
    @host = value
  end
end
