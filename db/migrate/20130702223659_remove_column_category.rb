class RemoveColumnCategory < ActiveRecord::Migration
  def change
      remove_column :articles, :category
  end
end
