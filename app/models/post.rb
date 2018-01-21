class Post < ApplicationRecord
  validates  :title,   length: { maximum: 50 }, presence: true
  validates  :content, length: { minimum: 5, maximum: 5000 }

  has_attached_file :image,
                    storage: :cloudinary,
                    path: ':id/:filename',
                    cloudinary_credentials: Rails.root.join('config/cloudinary.yml')
  validates_attachment :image,
                       presence: true,
                       content_type: { content_type: /\Aimage\/.*\Z/ }

  belongs_to :user

  default_scope { order(id: :desc) }
end
