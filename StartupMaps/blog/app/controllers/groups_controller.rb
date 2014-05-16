class GroupsController < ApplicationController
  before_action :authenticate_entity!
  before_action :set_group, only: [:show, :edit, :update, :destroy]
end
