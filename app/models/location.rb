class Location < ActiveRecord::Base
  attr_accessible :event, :event_id,
                  :street, :ward, :district, :city, :number,
                  :latitude, :longitude
  belongs_to :event

  acts_as_gmappable

  def gmaps4rails_address
    formal_street = self.street + ' street' if self.number.present?
    formal_district = self.district + ' district' if self.district.present?
    formal_city = self.city + ' city' if self.city.present?

    [self.number, formal_street, formal_district, formal_city, self.country].reject(&:blank?).join(',')
  end
end
