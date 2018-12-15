class TrainingRecord < ApplicationRecord
  mount_uploader :video, VideoUploader
  validates :video, :presence => true
  has_one :user

  def build_video_url
    "https://s3-ap-northeast-1.amazonaws.com/muscle-checker/#{TrainingRecord.last.video.file.path}"
  end
end
