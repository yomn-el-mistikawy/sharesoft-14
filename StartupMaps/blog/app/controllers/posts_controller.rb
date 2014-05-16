class PostsController < ApplicationController
  before_action :authenticate_entity!
end
