class CreateSendMergeRequests < ActiveRecord::Migration
  def change
    create_table :send_merge_requests do |t|
      t.integer :sender_id
      t.integer :receiver_id
      t.integer :project_id
      t.integer :response

      t.timestamps
    end
  end
end
