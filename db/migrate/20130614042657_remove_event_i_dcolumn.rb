class RemoveEventIDcolumn < ActiveRecord::Migration
  def change

  	  	remove_column :companies, :event_id

  	  	add_column :companies, :about_us, :text




  end
end
