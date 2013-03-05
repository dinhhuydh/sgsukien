class Event < ActiveRecord::Base
  attr_accessible :name, :datetime, :address, :message, :description 
end
