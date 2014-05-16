class AttachmentUploader < CarrierWave::Uploader::Base
include ActiveModel::Validations
  storage :file
  validates :name, presence: true
  validates :attachment, presence: true

  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end

  def extension_white_list
    %w(pdf doc htm html docx txt rar zip)
  end
end
