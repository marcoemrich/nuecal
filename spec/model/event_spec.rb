require_relative "../spec_helper"

describe 'Event' do
  before :each do
    @event= Event.new
  end

  it 'should return the allDay-Key on #to_json' do
    @event.to_json.should match /"allDay"/
  end

  it 'should not include allday (small letters)' do
    @event.to_json.should_not match /"allday"/
  end

  it 'should have a default of false on allDay' do
    @event.to_json.should match /"allDay":\s?false/
  end


end