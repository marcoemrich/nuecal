class Event < ActiveRecord::Base
  attr_accessible :allday, :description, :end, :start, :summary, :title, :url, :location, :organizer

  def as_json(options = {})
    attr = attributes
    attr["allDay"] = attributes["allday"]
    attr.delete("allday")
    attr
  end

end
