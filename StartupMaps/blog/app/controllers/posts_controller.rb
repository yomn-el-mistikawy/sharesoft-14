class PostsController < ApplicationController
  before_action :set_post, only: [:show, :edit, :update, :destroy]

  end