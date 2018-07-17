# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2018_07_17_100722) do

  create_table "companies", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name"
    t.string "adress1"
    t.string "adress2"
    t.string "zipcode"
    t.string "city"
    t.string "email"
    t.string "phone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "main_objects", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "adress1"
    t.string "adress2"
    t.string "zipcode"
    t.string "city"
    t.string "reference"
    t.string "access_code"
    t.integer "appt_number"
    t.float "surface_area"
    t.bigint "object_type_id"
    t.bigint "tenant_or_owner_id"
    t.bigint "pro_in_charge_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["object_type_id"], name: "index_main_objects_on_object_type_id"
    t.index ["pro_in_charge_id"], name: "index_main_objects_on_pro_in_charge_id"
    t.index ["tenant_or_owner_id"], name: "index_main_objects_on_tenant_or_owner_id"
  end

  create_table "missions", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "title"
    t.string "sub_title"
    t.text "description"
    t.date "start_date"
    t.date "finish_date"
    t.date "deadline_date"
    t.bigint "main_object_id"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["main_object_id"], name: "index_missions_on_main_object_id"
    t.index ["user_id"], name: "index_missions_on_user_id"
  end

  create_table "object_types", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "quotations", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "title"
    t.string "description"
    t.integer "quantity"
    t.float "cost"
    t.bigint "task_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["task_id"], name: "index_quotations_on_task_id"
  end

  create_table "task_categories", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "task_sub_categories", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "title"
    t.bigint "task_categories_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["task_categories_id"], name: "index_task_sub_categories_on_task_categories_id"
  end

  create_table "tasks", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "task_category_id"
    t.bigint "task_sub_category_id"
    t.text "description"
    t.date "start_date"
    t.date "finish_date"
    t.date "deadline_date"
    t.bigint "mission_id"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["mission_id"], name: "index_tasks_on_mission_id"
    t.index ["task_category_id"], name: "index_tasks_on_task_category_id"
    t.index ["task_sub_category_id"], name: "index_tasks_on_task_sub_category_id"
    t.index ["user_id"], name: "index_tasks_on_user_id"
  end

  create_table "user_types", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "firstname"
    t.string "lastname"
    t.string "phone"
    t.string "mobile"
    t.string "password"
    t.bigint "company_id"
    t.bigint "user_type_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.string "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string "unconfirmed_email"
    t.index ["company_id"], name: "index_users_on_company_id"
    t.index ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    t.index ["user_type_id"], name: "index_users_on_user_type_id"
  end

  add_foreign_key "main_objects", "object_types"
  add_foreign_key "missions", "main_objects"
  add_foreign_key "missions", "users"
  add_foreign_key "quotations", "tasks"
  add_foreign_key "task_sub_categories", "task_categories", column: "task_categories_id"
  add_foreign_key "tasks", "missions"
  add_foreign_key "tasks", "task_categories"
  add_foreign_key "tasks", "task_sub_categories"
  add_foreign_key "tasks", "users"
  add_foreign_key "users", "companies"
  add_foreign_key "users", "user_types"
end
