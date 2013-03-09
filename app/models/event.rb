class Event < ActiveRecord::Base
  attr_accessible :name, :datetime, :address, :message, :description,
                  :assets, :assets_attributes

  validates_presence_of :name, :datetime, :address

  belongs_to :user
  has_many :assets, as: :assetable
  accepts_nested_attributes_for :assets
end
