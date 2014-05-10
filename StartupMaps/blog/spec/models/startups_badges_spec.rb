require 'spec_helper'

describe StartupsBadges do	
  it "Sets badges except views badges and VIP and badges collectors badges" do
    expect(StartupsBadges.set_badges(1)).to eq([Badge.find(1), Badge.find(2), Badge.find(3), Badge.find(7), Badge.find(8), Badge.find(9), Badge.find(10), Badge.find(11), Badge.find(12), Badge.find(13), Badge.find(14), Badge.find(15), Badge.find(16), Badge.find(17), Badge.find(18), Badge.find(19), Badge.find(21), Badge.find(22), Badge.find(23), Badge.find(24)])
  end	 
end
