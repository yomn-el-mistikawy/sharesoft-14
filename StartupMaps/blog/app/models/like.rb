class Like < ActiveRecord::Base
  belongs_to :liker, :class_name "startup"
  belongs_to :likable, :polymorphic => true
end
