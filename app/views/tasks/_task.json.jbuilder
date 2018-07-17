json.extract! task, :id, :task_category_id, :task_sub_category_id, :description, :start_date, :finish_date, :deadline_date, :mission_id, :user_id, :created_at, :updated_at
json.url task_url(task, format: :json)
