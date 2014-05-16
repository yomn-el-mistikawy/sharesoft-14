class PostsController < ApplicationController
  before_action :authenticate_entity!
  before_action :set_post, only: [:show, :edit, :update, :destroy]
  end

