class LocationsController < ApplicationController
  def index
    @locations = Location.all
  end

  def read
  	@location_count = Location.count
  end

  def write
  	location_count = Location.count
	Location.create name: "Test-#{@location_count}", point: RGeo::Geographic.spherical_factory(srid: 4326).point(174.7730682333, -41.2917018833)
	@location_count = location_count + 1
  end
end