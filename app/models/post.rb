class Post < ApplicationRecord
  has_one :image
  scope :published, -> { where(published: true) }
end
