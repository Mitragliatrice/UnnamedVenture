class Estimate < ApplicationRecord
  enum currently_listed: [:listed, :unlisted]
  enum status: [:uncontacted, :contacted]

  mount_uploader :photo, HomeUploader

  attr_accessor :subtitle
end
