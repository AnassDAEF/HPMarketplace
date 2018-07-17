require 'test_helper'

class MainObjectsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @main_object = main_objects(:one)
  end

  test "should get index" do
    get main_objects_url
    assert_response :success
  end

  test "should get new" do
    get new_main_object_url
    assert_response :success
  end

  test "should create main_object" do
    assert_difference('MainObject.count') do
      post main_objects_url, params: { main_object: { access_code: @main_object.access_code, adress1: @main_object.adress1, adress2: @main_object.adress2, appt_number: @main_object.appt_number, city: @main_object.city, object_type_id: @main_object.object_type_id, pro_in_charge_id: @main_object.pro_in_charge_id, reference: @main_object.reference, surface_area: @main_object.surface_area, tenant_or_owner_id: @main_object.tenant_or_owner_id, zipcode: @main_object.zipcode } }
    end

    assert_redirected_to main_object_url(MainObject.last)
  end

  test "should show main_object" do
    get main_object_url(@main_object)
    assert_response :success
  end

  test "should get edit" do
    get edit_main_object_url(@main_object)
    assert_response :success
  end

  test "should update main_object" do
    patch main_object_url(@main_object), params: { main_object: { access_code: @main_object.access_code, adress1: @main_object.adress1, adress2: @main_object.adress2, appt_number: @main_object.appt_number, city: @main_object.city, object_type_id: @main_object.object_type_id, pro_in_charge_id: @main_object.pro_in_charge_id, reference: @main_object.reference, surface_area: @main_object.surface_area, tenant_or_owner_id: @main_object.tenant_or_owner_id, zipcode: @main_object.zipcode } }
    assert_redirected_to main_object_url(@main_object)
  end

  test "should destroy main_object" do
    assert_difference('MainObject.count', -1) do
      delete main_object_url(@main_object)
    end

    assert_redirected_to main_objects_url
  end
end
