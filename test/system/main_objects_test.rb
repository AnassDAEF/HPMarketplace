require "application_system_test_case"

class MainObjectsTest < ApplicationSystemTestCase
  setup do
    @main_object = main_objects(:one)
  end

  test "visiting the index" do
    visit main_objects_url
    assert_selector "h1", text: "Main Objects"
  end

  test "creating a Main object" do
    visit main_objects_url
    click_on "New Main Object"

    fill_in "Access Code", with: @main_object.access_code
    fill_in "Adress1", with: @main_object.adress1
    fill_in "Adress2", with: @main_object.adress2
    fill_in "Appt Number", with: @main_object.appt_number
    fill_in "City", with: @main_object.city
    fill_in "Object Type", with: @main_object.object_type_id
    fill_in "Pro In Charge", with: @main_object.pro_in_charge_id
    fill_in "Reference", with: @main_object.reference
    fill_in "Surface Area", with: @main_object.surface_area
    fill_in "Tenant Or Owner", with: @main_object.tenant_or_owner_id
    fill_in "Zipcode", with: @main_object.zipcode
    click_on "Create Main object"

    assert_text "Main object was successfully created"
    click_on "Back"
  end

  test "updating a Main object" do
    visit main_objects_url
    click_on "Edit", match: :first

    fill_in "Access Code", with: @main_object.access_code
    fill_in "Adress1", with: @main_object.adress1
    fill_in "Adress2", with: @main_object.adress2
    fill_in "Appt Number", with: @main_object.appt_number
    fill_in "City", with: @main_object.city
    fill_in "Object Type", with: @main_object.object_type_id
    fill_in "Pro In Charge", with: @main_object.pro_in_charge_id
    fill_in "Reference", with: @main_object.reference
    fill_in "Surface Area", with: @main_object.surface_area
    fill_in "Tenant Or Owner", with: @main_object.tenant_or_owner_id
    fill_in "Zipcode", with: @main_object.zipcode
    click_on "Update Main object"

    assert_text "Main object was successfully updated"
    click_on "Back"
  end

  test "destroying a Main object" do
    visit main_objects_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Main object was successfully destroyed"
  end
end
