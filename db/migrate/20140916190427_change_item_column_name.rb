class ChangeItemColumnName < ActiveRecord::Migration
  def change
  	rename_column :items, :name, :itemname
  end
end
