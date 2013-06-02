class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.integer :user_id
      t.integer :company_id
      t.string :event_name
      t.date :event_date
      t.text :event_description
    end
  end
end
