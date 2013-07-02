class RemoveTimestampsFromJointable < ActiveRecord::Migration
  def change
    remove_column :articles_tags, :created_at
    remove_column :articles_tags, :updated_at
  end
end
