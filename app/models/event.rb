class Event < ActiveRecord::Base
  attr_accessible :name, :datetime, :address, :message, :description 

  validates_presence_of :name, :datetime, :address

  belongs_to :user
end
