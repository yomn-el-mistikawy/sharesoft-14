require 'spec_helper'

describe Resume do
	before (:each) do
		@valid_attachement = {
			name: "essam" ,
			attachment: "upload"
		}
	end

	it "is not valid with a name" do 
resume = Resume.new(@valid_attachement.merge!(:name => "essam"))
	expect(resume).to_not be_valid
end




it "is valid with a name" do 
		expect(Resume.new(name: nil)).to have(1).errors_on(:name)

end


it "is valid with an attachement" do 
resume = Resume.new(@valid_attachement.merge!(:attachment => "upload"))
	expect(resume).to_not be_valid

end

it "is invalid without an attachement" do 
	expect(Resume.new(attachment: nil)).to have(1).errors_on(:attachment)
end
end





#RSpec.configure do |config|
 # config.after(:each) do
  #  if Rails.env.test? || Rails.env.cucumber?
   #   FileUtils.rm_rf(Dir["#{Rails.root}/spec/support/uploads"])
   # end 
  #end
#end

