class Profile < ApplicationRecord
  belongs_to :user
  has_attached_file :avatar, styles: { medium: '300x300>', thumb: '100x100#' }, default_url: '/images/'
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\Z/
  validates_attachment_file_name :avatar, matches: [/png\Z/, /jpe?g\Z/]
end
