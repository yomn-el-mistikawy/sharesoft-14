class RemoveAttachementFromResume < ActiveRecord::Migration
  def change
  	remove_column :resumes, :attachement
  end
end
