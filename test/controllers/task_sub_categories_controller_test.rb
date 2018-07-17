require 'test_helper'

class TaskSubCategoriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @task_sub_category = task_sub_categories(:one)
  end

  test "should get index" do
    get task_sub_categories_url
    assert_response :success
  end

  test "should get new" do
    get new_task_sub_category_url
    assert_response :success
  end

  test "should create task_sub_category" do
    assert_difference('TaskSubCategory.count') do
      post task_sub_categories_url, params: { task_sub_category: { category_id: @task_sub_category.category_id, title: @task_sub_category.title } }
    end

    assert_redirected_to task_sub_category_url(TaskSubCategory.last)
  end

  test "should show task_sub_category" do
    get task_sub_category_url(@task_sub_category)
    assert_response :success
  end

  test "should get edit" do
    get edit_task_sub_category_url(@task_sub_category)
    assert_response :success
  end

  test "should update task_sub_category" do
    patch task_sub_category_url(@task_sub_category), params: { task_sub_category: { category_id: @task_sub_category.category_id, title: @task_sub_category.title } }
    assert_redirected_to task_sub_category_url(@task_sub_category)
  end

  test "should destroy task_sub_category" do
    assert_difference('TaskSubCategory.count', -1) do
      delete task_sub_category_url(@task_sub_category)
    end

    assert_redirected_to task_sub_categories_url
  end
end
