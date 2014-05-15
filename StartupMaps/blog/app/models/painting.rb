

# Definition: This method add the uploader to the painting model by calling mount_uploader method.
# Input: Image.
# Output: Void.
# Author: Sandra Youssef.




class Painting < ActiveRecord::Base

  belongs_to :gallery
  mount_uploader :image, ImageUploader
end
