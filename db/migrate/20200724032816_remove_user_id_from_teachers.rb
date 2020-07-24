class RemoveUserIdFromTeachers < ActiveRecord::Migration[6.0]
  def change
    remove_column :teachers, :user_id
  end
end
