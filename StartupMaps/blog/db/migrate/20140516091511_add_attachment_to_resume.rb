class AddAttachmentToResume < ActiveRecord::Migration
  def change
    add_column :resumes, :attachment, :string
  end
end
