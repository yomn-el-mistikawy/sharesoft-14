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
    it"online startups with a sector" do
      online1 = Startup.create(:name => 'alia', :online_status => 1, :sector => 'Trading')
      online2 = Startup.create(:name => 'tarek', :online_status => 0, :sector => 'Agriculture')
      expect(Startup.where(:online_status => true).where(:sector => 'Trading').size).to eq(1)
    end
    it"offline startups with a sector" do
      offline1 = Startup.create(:name => 'alia', :online_status => 0, :sector => 'Trading')
      offline2 = Startup.create(:name => 'tarek', :online_status => 1, :sector => 'Agriculture')
      expect(Startup.where(:online_status => false).where(:sector => 'Trading').size).to eq(1)
    end
    it"merged startups with a sector" do
      merged1 = Startup.create(:name => 'alia', :joint_ventures => 'tarek', :sector => 'Trading')
      merged2 = Startup.create(:name => 'tarek', :joint_ventures => 'alia', :sector => 'Agriculture')
      expect(Startup.where(:joint_ventures != "").where(:sector => 'Trading').size).to eq(1)
    end
end