require 'spec_helper'

describe MapsController do

	it "retrieve startups" do
      startup1 = Startup.create( :id => '1', :name => 'alia')
      startup2 = Startup.create( :id => '2', :name => 'yomn')
      startup3 = Startup.create( :id => '3', :name => 'heba')
      expect(Startup.all).to eq([startup1, startup2, startup3])
    end

    it "retrieve investors" do
      investor1 = Investor.create( :id => '1', :name => 'alia')
      investor2 = Investor.create( :id => '2', :name => 'yomn')
      investor3 = Investor.create( :id => '3', :name => 'heba')
      expect(Investor.all).to eq([investor1, investor2, investor3])
    end

    it "retrieve services" do
      services1 = Service.create( :id => '1', :name => 'alia')
      services2 = Service.create( :id => '2', :name => 'yomn')
      services3 = Service.create( :id => '3', :name => 'heba')
      expect(Service.all).to eq([services1, services2, services3])
    end
end
