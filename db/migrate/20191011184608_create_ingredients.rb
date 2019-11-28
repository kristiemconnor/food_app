class CreateStructure < ActiveRecord::Migration[6.0]
  def change
    create_table "ingredients"
    t.string "name"
    t.datetime "expiration"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "user_id"
  end


  def change
    create_table "users"
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end
end


