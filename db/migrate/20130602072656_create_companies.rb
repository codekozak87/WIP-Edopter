class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.string :company_name
      t.string :company_email
      t.integer :user_id
      t.integer :event_id
    end
  end
end
