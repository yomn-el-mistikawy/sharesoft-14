class CreateSendMergeRequests < ActiveRecord::Migration
  def change
    create_table :send_merge_requests do |t|
      t.belongs_to :sender
      t.belongs_to :receiver
      t.belongs_to :project
      t.integer :response

      t.timestamps
    end
  end
end
