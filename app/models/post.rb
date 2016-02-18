class Post < ActiveRecord::Base
  belongs_to :user, dependent: :destroy
  has_many :missions

  validates :title, :description, presence: true
  validates :date_begin, :date_end, presence: true
  validates :employee_name, :employee_skill, presence: true

  mount_uploader :photo, PhotoUploader
end
