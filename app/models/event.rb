class Event < ActiveRecord::Base
  attr_accessible :allday, :description, :enddate, :startdate, :summary, :title, :url, :location, :organizer
end
