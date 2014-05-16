require 'spec_helper'

describe Post do
	before(:each)do
	@valid_post = {
		id: "1",
		title: "this is a title",
		text: "this is a post",
		group_id: '1',
		startup_id: '1'
	}
end

it "is not valid with an id" do
	post = Post.new(@valid_post.merge!(:id => '1'))
	expect(post).to_not be_valid
end

it "is not valid with a title" do
	post= Post.new(@valid_post.merge!(:title => "this is a title"))
	expect(post).to_not be_valid
end

it "is not valid with a text" do
	post= Post.new(@valid_post.merge!(:text => "this is a post"))
	expect(post).to_not be_valid
end

it "is not valid with a group id" do
	post= Post.new(@valid_post.merge!(:group_id => '1'))
	expect(post).to_not be_valid
end

it "is not valid with a startup id" do
	post= Post.new(@valid_post.merge!(:startup_id => '1'))
	expect(post).to_not be_valid
end

it "is invalid without an id" do
	expect(Post.new(id: nil)).to have(1).errors_on(:id)
end

it "is invalid without a title" do
	expect(Post.new(title: nil)).to have(1).errors_on(:title)
end

it "is invalid without a text" do
	expect(Post.new(text: nil)).to have(1).errors_on(:text)
end

it "is invalid without a group id" do
	expect(Post.new(group_id: nil)).to have(1).errors_on(:group_id)
end

it "is invalid without a startup id" do
	expect(Post.new(startup_id: nil)).to have(1).errors_on(:startup_id)
end

end