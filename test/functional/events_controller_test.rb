require 'test_helper'

class EventsControllerTest < ActionController::TestCase
  setup do
    @event = events(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:events)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create event" do
    assert_difference('Event.count') do
      post :create, event: { allday: @event.allday, description: @event.description, enddate: @event.enddate, location_id: @event.location_id, organizer_id: @event.organizer_id, startdate: @event.startdate, summary: @event.summary, title: @event.title, url: @event.url }
    end

    assert_redirected_to event_path(assigns(:event))
  end

  test "should show event" do
    get :show, id: @event
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @event
    assert_response :success
  end

  test "should update event" do
    put :update, id: @event, event: { allday: @event.allday, description: @event.description, enddate: @event.enddate, location_id: @event.location_id, organizer_id: @event.organizer_id, startdate: @event.startdate, summary: @event.summary, title: @event.title, url: @event.url }
    assert_redirected_to event_path(assigns(:event))
  end

  test "should destroy event" do
    assert_difference('Event.count', -1) do
      delete :destroy, id: @event
    end

    assert_redirected_to events_path
  end
end
