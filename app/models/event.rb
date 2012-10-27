class Event < ActiveRecord::Base
  attr_accessible :allday, :description, :end, :start, :summary, :title, :url, :location, :organizer

  def to_json
    attr = attributes
    attr[:allDay] = attributes[:allday]
    attr.delete(:allday)
    attr.to_json
  end
end
