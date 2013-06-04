class AddTableAttributes < ActiveRecord::Migration
  def change
    add_column :users, :interests, :text

    add_column :users, :email, :string

    add_column :users, :about_me, :text

    add_column :companies, :website, :string

    add_column :companies, :bread_and_butter, :string

    add_column :companies, :social_url, :string

    add_column :companies, :product, :string

    add_column :events, :location, :string


  end
end
