require 'spec_helper'
describe MapsController do
   it "retrieve startups" do
      startup1 = Startup.create(:name => 'alia')
      startup2 = Startup.create(:name => 'yomn')
      startup3 = Startup.create(:name => 'heba')
      expect(Startup.all.size).to eq(5)
    end
   it "retrieve investors" do
      investor1 = Investor.create(:name => 'alia')
      investor2 = Investor.create(:name => 'yomn')
      investor3 = Investor.create(:name => 'heba')
      expect(Investor.all.size).to eq(3)
    end
    it "retrieve services" do
      services1 = Service.create(:name => 'alia')
      services2 = Service.create(:name => 'yomn')
      services3 = Service.create(:name => 'heba')
      expect(Service.all.size).to eq(3)
    end
end
