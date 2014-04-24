class CreateResumes < ActiveRecord::Migration
  def change
    create_table :resumes do |t|
      t.string :name
      t.string :attachement
	  t.belongs_to :group
	  t.belongs_to :startup
	  t.has_many :comments
	  t.has_many :likes, :as => :likable
      t.timestamps
    end
  end
end
