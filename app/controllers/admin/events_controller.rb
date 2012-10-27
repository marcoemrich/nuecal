module Admin
  class EventsController < ApplicationController
    active_scaffold :event do |conf|
    end
  end
end