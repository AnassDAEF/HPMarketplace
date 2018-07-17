require "application_system_test_case"

class ObjectTypesTest < ApplicationSystemTestCase
  setup do
    @object_type = object_types(:one)
  end

  test "visiting the index" do
    visit object_types_url
    assert_selector "h1", text: "Object Types"
  end

  test "creating a Object type" do
    visit object_types_url
    click_on "New Object Type"

    fill_in "Title", with: @object_type.title
    click_on "Create Object type"

    assert_text "Object type was successfully created"
    click_on "Back"
  end

  test "updating a Object type" do
    visit object_types_url
    click_on "Edit", match: :first

    fill_in "Title", with: @object_type.title
    click_on "Update Object type"

    assert_text "Object type was successfully updated"
    click_on "Back"
  end

  test "destroying a Object type" do
    visit object_types_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Object type was successfully destroyed"
  end
end
