require 'spec_helper'

describe Subscription do
# 	before (:each) do
# 		@valid_subscription = {:subscriber_id => 1}
# end
# 		it "is a valid subscripition with subscriber id" do
# 	 subscribing = Subscription.new(@valid_subscription.merge!(:subscriber_id => 1))
# expect(subscribing).to_not be_valid
# end

it "subscribes" do
	entity = Entity.create(email: "ziad@gmail.com")
	entity1 = Entity.create(email: "ziad1@gmail.com")
	entity2 = Entity.create(email: "ziad2@gmail.com")
	subscription = Subscription.(subscriber_id: entity1.id, subscribee_id: entity.id)
	subscription1 = Subscription.(subscriber_id: entity2.id, subscribee_id: entity.id)
	expect(Subscription.where(:subscribee_id => entity.id)).to eq([subscription, subscription1])
end	

end
