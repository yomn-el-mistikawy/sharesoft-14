class GroupsStartup < ActiveRecord::Base
  belongs_to :group
  belongs_to :startup
end
