class TrainingRecord < ApplicationRecord
  mount_uploader :video, VideoUploader
  validates :video, :presence => true
  has_one :user
end
