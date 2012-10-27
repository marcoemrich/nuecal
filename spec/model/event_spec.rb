require_relative "../spec_helper"

describe 'Event' do
  it 'should return the allDay-Key on #to_json' do
    e = Event.new
    e.to_json.should match /"allDay"/
  end
end