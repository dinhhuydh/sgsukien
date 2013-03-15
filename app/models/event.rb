class Event < ActiveRecord::Base
  attr_accessor :date, :time
  attr_accessible :name, :datetime, :message, :description,
                  :assets, :assets_attributes,
                  :location, :location_attributes,
                  :date, :time

  validates_presence_of :name, :datetime

  belongs_to :user
  has_many :assets, as: :assetable
  accepts_nested_attributes_for :assets
  has_one :location, :dependent => :destroy
  accepts_nested_attributes_for :location
end
