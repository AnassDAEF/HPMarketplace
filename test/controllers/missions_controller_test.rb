require 'test_helper'

class MissionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @mission = missions(:one)
  end

  test "should get index" do
    get missions_url
    assert_response :success
  end

  test "should get new" do
    get new_mission_url
    assert_response :success
  end

  test "should create mission" do
    assert_difference('Mission.count') do
      post missions_url, params: { mission: { deadline_date: @mission.deadline_date, description: @mission.description, finish_date: @mission.finish_date, id_object_id: @mission.id_object_id, id_user_id: @mission.id_user_id, start_date: @mission.start_date, sub_title: @mission.sub_title, title: @mission.title } }
    end

    assert_redirected_to mission_url(Mission.last)
  end

  test "should show mission" do
    get mission_url(@mission)
    assert_response :success
  end

  test "should get edit" do
    get edit_mission_url(@mission)
    assert_response :success
  end

  test "should update mission" do
    patch mission_url(@mission), params: { mission: { deadline_date: @mission.deadline_date, description: @mission.description, finish_date: @mission.finish_date, id_object_id: @mission.id_object_id, id_user_id: @mission.id_user_id, start_date: @mission.start_date, sub_title: @mission.sub_title, title: @mission.title } }
    assert_redirected_to mission_url(@mission)
  end

  test "should destroy mission" do
    assert_difference('Mission.count', -1) do
      delete mission_url(@mission)
    end

    assert_redirected_to missions_url
  end
end
