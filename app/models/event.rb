class Event < ActiveRecord::Base
  attr_accessible :allday, :description, :end, :start, :summary, :title, :url, :location, :organizer

  #def to_json(params)
  #  "{start: #{start.to_i * 1000}, end: #{send(:end).to_i * 1000}, title: #{title}}"
  #end
end
