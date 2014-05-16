class Friendship < ActiveRecord::Base
belongs_to :sender, :class_name => "Entity"
belongs_to :receiver, :class_name => "Entity"

end
