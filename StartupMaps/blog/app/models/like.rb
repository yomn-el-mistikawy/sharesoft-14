class Like < ActiveRecord::Base
  belongs_to :startup
  belongs_to :likable, :polymorphic => true
end
