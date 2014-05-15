require 'spec_helper'

describe Resume do

RSpec.configure do |config|
  config.after(:each) do
    if Rails.env.test? || Rails.env.cucumber?
      FileUtils.rm_rf(Dir["#{Rails.root}/spec/support/uploads"])
    end 
  end
end

end
