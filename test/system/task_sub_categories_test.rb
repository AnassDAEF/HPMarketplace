require "application_system_test_case"

class TaskSubCategoriesTest < ApplicationSystemTestCase
  setup do
    @task_sub_category = task_sub_categories(:one)
  end

  test "visiting the index" do
    visit task_sub_categories_url
    assert_selector "h1", text: "Task Sub Categories"
  end

  test "creating a Task sub category" do
    visit task_sub_categories_url
    click_on "New Task Sub Category"

    fill_in "Category", with: @task_sub_category.category_id
    fill_in "Title", with: @task_sub_category.title
    click_on "Create Task sub category"

    assert_text "Task sub category was successfully created"
    click_on "Back"
  end

  test "updating a Task sub category" do
    visit task_sub_categories_url
    click_on "Edit", match: :first

    fill_in "Category", with: @task_sub_category.category_id
    fill_in "Title", with: @task_sub_category.title
    click_on "Update Task sub category"

    assert_text "Task sub category was successfully updated"
    click_on "Back"
  end

  test "destroying a Task sub category" do
    visit task_sub_categories_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Task sub category was successfully destroyed"
  end
end
