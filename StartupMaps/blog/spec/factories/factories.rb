    FactoryGirl.define do

FactoryGirl.define do
 factory :my_file do
   photo Rack::Test::UploadedFile.new(File.open(File.join(Rails.root, '/spec/fixtures/myfiles/index.jpeg')))
 end
end
end
