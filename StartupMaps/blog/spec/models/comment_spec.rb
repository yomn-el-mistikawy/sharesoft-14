require 'spec_helper'

describe Comment do
  it "created successfully when validations met" do
    @entity = Entity.new
    @entity.name = "ash"
    @post = Post.new
    @post.id = 1
    @comment = Comment.new
    @comment.post_id = 1
    @comment.startup_id = 1
    @comment.commenter = @entity.name
    @comment.comment = "abc"
    expect(@comment).to be_valid
  end

  it "does not allow comment to be nil" do
    @entity = Entity.new
    @entity.name = "ash"
    @post = Post.new
    @post.id = 1
    @comment = Comment.new
    @comment.post_id = 1
    @comment.startup_id = 1
    @comment.commenter = @entity.name
    @comment.comment = nil
    expect(@comment).to have(1).errors_on(:comment)
  end

  it "does not allow comment to be only spaces" do
    @entity = Entity.new
    @entity.name = "ash"
    @post = Post.new
    @post.id = 1
    @comment = Comment.new
    @comment.post_id = 1
    @comment.startup_id = 1
    @comment.commenter = @entity.name
    @comment.comment = "  "
    expect(@comment).to have(1).errors_on(:comment)
  end

  it "can be deleted" do
    @comment = Comment.new
    @comment.id = 1
    @comment.post_id = 1
    @comment.startup_id = 1
    @comment.commenter = "Ash"
    @comment.comment = "abc"
    @comment.destroy
    @c = Comment.where(id: 1)
    expect(@c).to be_empty
  end
end
