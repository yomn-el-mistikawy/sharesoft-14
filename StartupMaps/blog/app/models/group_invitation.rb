class GroupInvitation < ActiveRecord::Base
	has_and_belongs_to_many :groups
	has_and_belongs_to_many :entities, :as => :receiver
	has_and_belongs_to_many :entities, :as => :sender
end
