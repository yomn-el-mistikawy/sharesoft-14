require 'spec_helper'

describe EntitiesController do
	describe "Preference Choose" do
		it "udate preference" do
			prefer = Tag.create(tags: "Tag1", entity_id: 1)
			prefer = Tag.create(tags: "Tag2", entity_id: 1)
			prefer = Tag.create(tags: "Tag1", entity_id: 2)
			prefer = Tag.create(tags: "Tag4", entity_id: 3)
      expect(Tag.all.size).to eq(4)
      expect(Tag.where(entity_id: 1).size).to eq(2)
			Tag.find_by(tags: "Tag1", entity_id: 1).destroy
			expect(Tag.where(entity_id: 1).size).to eq(1)
      expect(Tag.where(entity_id: 2).size).to eq(1)
		end
	end
end
