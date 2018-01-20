class Post < ApplicationRecord
  validates  :title,   length: { maximum: 100 }, presence: true
  validates  :content, length: { minimum: 5, maximum: 5000 }
  belongs_to :user
end
