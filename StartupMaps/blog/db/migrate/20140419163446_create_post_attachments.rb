class CreatePostAttachments < ActiveRecord::Migration
  def change
    create_table :post_attachments do |t|
      t.datetime :date
      t.string :description
      t.belongs_to :groups
      t.timestamps
    end
  end
end
